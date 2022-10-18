rm -rf Frameworks *.xcframework App.* Derived Tuist/Dependencies ~/.tuist/Cache

tuist fetch
tuist cache warm --xcframeworks --dependencies-only --profile Release

cp -rf ~/.tuist/Cache/BuildCache/*/*.xcframework ./
cp -rf Tuist/Dependencies/Carthage/Build/*.xcframework ./

rm -rf SDWebImageMapKit.* GoogleMapsM4B.*

mkdir -p Frameworks

for xcf in *.xcframework; do
    zip -r "Frameworks/$xcf.zip" $xcf
done

rm -rf *.xcframework App.* Derived Tuist/Dependencies ~/.tuist/Cache

for zipfile in Frameworks/*.xcframework.zip; do
    zipsha=$(shasum -a 256 "$zipfile" | grep -o '^[0-9a-f]*\b')
    newfile="${zipfile//xcframework/$zipsha}"
    mv $zipfile $newfile
done

echo "" > Targets.swift

for zipfile in Frameworks/*.zip; do
    filename=$(basename -- "$zipfile")
    nozipfilename="${filename%.*}"
    sha="${nozipfilename##*.}"
    packagename="${nozipfilename%.*}"

    echo '.binaryTarget(' >> Targets.swift
    echo 'name: "'$packagename'",' >> Targets.swift
    echo 'url: "https://github.com/flowardco/floward-ios-dependencies/releases/download/xcode14.0/'$filename'",' >> Targets.swift
    echo 'checksum: "'$sha'"' >> Targets.swift
    echo '),' >> Targets.swift
done
