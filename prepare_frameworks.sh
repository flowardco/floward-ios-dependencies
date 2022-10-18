mkdir -p Frameworks

rm -rf Carthage/Build/SDWebImageMapKit.*
for xcf in Carthage/Build/*.xcframework; do
    rm -rf $xcf/*/dSYMs
    filename=$(basename -- "$xcf")
    zipfile="${filename//xcframework/zip}"
    zip -r "Frameworks/$zipfile" $xcf
done

rm SwiftPackageDependencies/*.sha256
for zipfile in SwiftPackageDependencies/*.zip; do
    mv $zipfile Frameworks
done

echo "" > Targets.swift
for zipfile in Frameworks/*.zip; do
    filename=$(basename -- "$zipfile")
    packagename="${filename%.*}"
    sha=$(shasum -a 256 "$zipfile" | grep -o '^[0-9a-f]*\b')
    echo '.binaryTarget(' >> Targets.swift
    echo 'name: "'$packagename'",' >> Targets.swift
    echo 'url: "https://github.com/flowardco/floward-ios-dependencies/releases/download/binaries/'$filename'",' >> Targets.swift
    echo 'checksum: "'$sha'"' >> Targets.swift
    echo '),' >> Targets.swift
done
