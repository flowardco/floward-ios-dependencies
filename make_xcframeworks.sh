rm -rf Frameworks *.xcframework App.* Derived Tuist/Dependencies ~/.tuist/Cache

tuist fetch
tuist cache warm --xcframeworks

cp -rf ~/.tuist/Cache/BuildCache/*/*.xcframework ./
cp -rf Tuist/Dependencies/Carthage/Build/*.xcframework ./

rm -rf SDWebImageMapKit.* GoogleMapsM4B.*

mkdir -p Frameworks

for xcf in *.xcframework; do
    zip -r "Frameworks/$xcf.zip" $xcf
done

rm -rf *.xcframework App.* Derived Tuist/Dependencies ~/.tuist/Cache
