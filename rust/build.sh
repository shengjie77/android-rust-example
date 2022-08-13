cargo build --target aarch64-linux-android --release
cargo build --target armv7-linux-androideabi --release
cargo build --target i686-linux-android --release

ANDROID_PROJECT_PATH=../android/app/src/main/jniLibs
NAME=rust

cp  ./target/aarch64-linux-android/release/lib$NAME.so $ANDROID_PROJECT_PATH/arm64/lib$NAME.so
cp  ./target/armv7-linux-androideabi/release/lib$NAME.so $ANDROID_PROJECT_PATH/armeabi/lib$NAME.so
cp  ./target/i686-linux-android/release/lib$NAME.so $ANDROID_PROJECT_PATH/x86/lib$NAME.so