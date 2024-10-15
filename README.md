# my-photo-filltetr
ブラウザで動くオリジナル画像フィルターです(wasm を使って何かしたかった)

## wasm(Rust) side

### setup
```sh
# rust install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# wasm pack install
rustup target add wasm32-unknown-unknown
```

### build
```sh
cd photo_fillter
wasm-pack build --target web
```

### rust run
```sh
cd photo_fillter
cargo run
```

### mv package
```sh
cp -r photo_fillter/pkg photo-fillter-client/src/
```