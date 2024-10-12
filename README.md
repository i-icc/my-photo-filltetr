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
cd photo-fillter
wasm-pack build --target web
```

### rust run
```sh
cd photo-fillter
cargo run
```