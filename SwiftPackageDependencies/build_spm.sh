for xxx in $(swift create-xcframework  --list-products | cut -d ':' -f3 | grep -o '\w*' | tail -n +2)
do
    swift create-xcframework --platform ios --no-debug-symbols --configuration release --zip --xc-setting BUILD_LIBRARIES_FOR_DISTRIBUTION=YES --clean --stack-evolution $xxx
done
