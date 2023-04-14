# Changelog

## 0.1.0 (2023-04-14)


### Features

* add back usr folder ([9f47c1e](https://github.com/tepene/ublue-bayou/commit/9f47c1eddfc00779de2fc4c07bb6816bda9adf76))
* Add code-of-conduct ([#39](https://github.com/tepene/ublue-bayou/issues/39)) ([aab8078](https://github.com/tepene/ublue-bayou/commit/aab8078cfdc7d2354e057a0ca4771d3a53d2df4c))
* add conventional commit linting and release notes generator ([b7820b4](https://github.com/tepene/ublue-bayou/commit/b7820b4ba312ca939d0dc977ed9f6a08d135324b))
* add fedora 38 build ([#45](https://github.com/tepene/ublue-bayou/issues/45)) ([69fd4d7](https://github.com/tepene/ublue-bayou/commit/69fd4d7a57c5ce39331e47e8dedeb2a2f643190f))
* add how to review a PR ([#76](https://github.com/tepene/ublue-bayou/issues/76)) ([ae2e25b](https://github.com/tepene/ublue-bayou/commit/ae2e25b92f5ebebed2fcaad53ecfab651a639d12))
* add yafti.yml from bluefin ([f9a1561](https://github.com/tepene/ublue-bayou/commit/f9a1561f2c8a718890f4d932db8ce625342610e2))
* change description for more information ([33ddd2b](https://github.com/tepene/ublue-bayou/commit/33ddd2bbac6eebbf4716af0465808f2e2fe56ebc))
* declare base image and fedora ver in recipe ([fe16187](https://github.com/tepene/ublue-bayou/commit/fe16187a92400865b4f96e82ce4d6781478bdfe6))
* declare image description in recipe.yml ([c9c011d](https://github.com/tepene/ublue-bayou/commit/c9c011d842a9ef9ec5d3976a0fd167b22ca0f0ed))
* declare image name in recipe.yml ([2b40d4b](https://github.com/tepene/ublue-bayou/commit/2b40d4b4367c669f1e557194db7bc14ac40f8b53))
* ease customization by reading flatpaks and rpms to install from a recipe.yml. ([#79](https://github.com/tepene/ublue-bayou/issues/79)) ([a5e90a5](https://github.com/tepene/ublue-bayou/commit/a5e90a588f58a938405bf513d1032955be34028e))
* enable manually running build ([2521741](https://github.com/tepene/ublue-bayou/commit/2521741049e25b13c3865225be26c3d63aa84a21))
* gha for building / publishing on pr ([#87](https://github.com/tepene/ublue-bayou/issues/87)) ([1726d18](https://github.com/tepene/ublue-bayou/commit/1726d182ee95ce5eb13f47212799a68b63c5aefc))
* Install VanillaOS' first-setup ([#55](https://github.com/tepene/ublue-bayou/issues/55)) ([43ddf0a](https://github.com/tepene/ublue-bayou/commit/43ddf0a123911f9dedc3a76dcfc314a7cb37e871))
* leave a warning for people to move to new repo ([#99](https://github.com/tepene/ublue-bayou/issues/99)) ([ffcb397](https://github.com/tepene/ublue-bayou/commit/ffcb3973bd540d679ab033ed94de6336b903e7dd))
* split flatpak update units into user and system ([#72](https://github.com/tepene/ublue-bayou/issues/72)) ([99c15be](https://github.com/tepene/ublue-bayou/commit/99c15be6f012cb590891c5ef16b2613dc538d144))
* swap out custom build for RPM of vanilla-first-setup ([#59](https://github.com/tepene/ublue-bayou/issues/59)) ([6927892](https://github.com/tepene/ublue-bayou/commit/6927892581dadf8f31419a0d9b070bb7268513ba))
* switch to separate build script ([68122c8](https://github.com/tepene/ublue-bayou/commit/68122c87cacbadc47bd85403c2d1c5b5b49eab3f))
* switch to yafti for first boot ([0b669f5](https://github.com/tepene/ublue-bayou/commit/0b669f5bb502c5e334474c54c95fbb7fed184b36))
* tag PR builds independently from matrix.version, latest, and stable ([b022183](https://github.com/tepene/ublue-bayou/commit/b02218386235e6d40a11a48b5b1171e9acf8d1eb))
* update artifacthub readme url ([6cc44ff](https://github.com/tepene/ublue-bayou/commit/6cc44ff4a9462727260733d9c973aae5a3f90c46))
* use a recipe matrix ([1bfabe6](https://github.com/tepene/ublue-bayou/commit/1bfabe674e92dd5bf7fc12956941857de4eacd0a))
* yafti package group for recipe.yml ([0cf6b13](https://github.com/tepene/ublue-bayou/commit/0cf6b13b6c44135848ae9a400b2fa3aa5aed657d))


### Bug Fixes

* $IMAGE_NAME -&gt; ${{ env.IMAGE_NAME }} ([678ab12](https://github.com/tepene/ublue-bayou/commit/678ab12c5ac41751775ca6898d09e2d09ea2d8b3))
* add a warning that we change the flatpak configuration ([#80](https://github.com/tepene/ublue-bayou/issues/80)) ([9a349e2](https://github.com/tepene/ublue-bayou/commit/9a349e2625791b90c11f640938060344ec3e4bd5))
* add pip for yafti, remove zenity (unneeded) ([9e827fe](https://github.com/tepene/ublue-bayou/commit/9e827fe6be1495221cecc83746d266a78c55ba96))
* add recipe build arg ([#23](https://github.com/tepene/ublue-bayou/issues/23)) ([a27e3cf](https://github.com/tepene/ublue-bayou/commit/a27e3cfa13fbf76e145a6fcd4bb469d42daf5995))
* add shebang ([97ee716](https://github.com/tepene/ublue-bayou/commit/97ee7169f4a287520b516bc377b90046b717daaf))
* Add vte dependency for first-setup ([#56](https://github.com/tepene/ublue-bayou/issues/56)) ([f8917a3](https://github.com/tepene/ublue-bayou/commit/f8917a3258196f85b8e3805f5ebcb1c9c0db06a7))
* add zenity to not break if th FROM is changed ([9b3578b](https://github.com/tepene/ublue-bayou/commit/9b3578b2175d4ad2427736ff7a7e3bc962ea35f0))
* allow forks to push to registry with label ([#86](https://github.com/tepene/ublue-bayou/issues/86)) ([14b1b7c](https://github.com/tepene/ublue-bayou/commit/14b1b7cb044ec616817aa30075609469dcb9986b))
* artifact upload/extract ([#88](https://github.com/tepene/ublue-bayou/issues/88)) ([6590066](https://github.com/tepene/ublue-bayou/commit/6590066ebcf72d6c4a56730dd682088db17d7df0))
* change img to startingpoint in verification ([21eafaa](https://github.com/tepene/ublue-bayou/commit/21eafaa3c09c888f8b90a0345855a5024a24dacb))
* declare image name in one place ([73de53c](https://github.com/tepene/ublue-bayou/commit/73de53cd39fbc4a5c84e27d9df7215f91d689ab4))
* don't copy usr as it's empty ([8b389d5](https://github.com/tepene/ublue-bayou/commit/8b389d5f049c6e9c74c9a742edf798d52beaab28))
* Don't generate an image when README.md is updated ([#36](https://github.com/tepene/ublue-bayou/issues/36)) ([8c170cf](https://github.com/tepene/ublue-bayou/commit/8c170cfe89dd306eec0940f4dc50ed245c94bc2b))
* loop over lines, functional var substitution ([773fc23](https://github.com/tepene/ublue-bayou/commit/773fc23804d7f6d5c044d46c28564a62d709f171))
* only generate date tag for main branch ([94aa5bb](https://github.com/tepene/ublue-bayou/commit/94aa5bb8df2aac0985d4c9422b19b0c03a3f25b0))
* re-tag image ([#92](https://github.com/tepene/ublue-bayou/issues/92)) ([a831ce0](https://github.com/tepene/ublue-bayou/commit/a831ce00df84d94e2bdb48013f650bcbb5b39568))
* remove -y flag from yq; not in  go version ([5a98ef6](https://github.com/tepene/ublue-bayou/commit/5a98ef653293d5d3a9b4f0920d3625291a93601a))
* remove 38 ([#89](https://github.com/tepene/ublue-bayou/issues/89)) ([8a6f343](https://github.com/tepene/ublue-bayou/commit/8a6f3433ad45b0f9f3da974a691001c02f498fb1))
* remove 38 builds and fix logo metadata ([#62](https://github.com/tepene/ublue-bayou/issues/62)) ([521f0ad](https://github.com/tepene/ublue-bayou/commit/521f0adcda598a1bf494d969df375f0c0a03a10c))
* remove if statements ([#96](https://github.com/tepene/ublue-bayou/issues/96)) ([0c7bc17](https://github.com/tepene/ublue-bayou/commit/0c7bc17666ae038a0504d24a0e683f724c734527))
* remove old pr workflow sections ([#98](https://github.com/tepene/ublue-bayou/issues/98)) ([4a21580](https://github.com/tepene/ublue-bayou/commit/4a21580f4e4d40692449bae61a75a555e8569be1))
* remove unneeded escape ([616c59c](https://github.com/tepene/ublue-bayou/commit/616c59c90bebd1d4dda24d5c28fa35adb067b13a))
* rename package back to `base` ([#97](https://github.com/tepene/ublue-bayou/issues/97)) ([785b8f0](https://github.com/tepene/ublue-bayou/commit/785b8f0d8adb8513bbe94b8918bfc0033ee0ca45))
* restore download artifact step, support multi-line tags ([#90](https://github.com/tepene/ublue-bayou/issues/90)) ([c40bddf](https://github.com/tepene/ublue-bayou/commit/c40bddfdf39a61545700ecb8123a02abd24a4f8f))
* retain variables ([091e939](https://github.com/tepene/ublue-bayou/commit/091e9396f2929bee6a3cf1606439377f75f13a92))
* revert previous commit ([5947af4](https://github.com/tepene/ublue-bayou/commit/5947af45da9ea324ab8c52e09142c916791d88e2))
* typo in /usr ([bd5db68](https://github.com/tepene/ublue-bayou/commit/bd5db68387150ee04afc348bfdfd42afdc4db167))
* typo in workflow_dispatch ([fbd14f5](https://github.com/tepene/ublue-bayou/commit/fbd14f502f6c2ceaeb02f6b7ddab246b7a507171))
* update cosign action ([#94](https://github.com/tepene/ublue-bayou/issues/94)) ([0aff9ba](https://github.com/tepene/ublue-bayou/commit/0aff9bac374c3494f57a360fd4426afe705bfee9))
* use RECIPE arg ([6d77885](https://github.com/tepene/ublue-bayou/commit/6d778859c82924e920198c69c2e27bbabdf3ea3e))
* use yq in setup-flatpaks ([66d2265](https://github.com/tepene/ublue-bayou/commit/66d22650f02cb4c551675614168b44eb89cb8345))


### Miscellaneous Chores

* release 0.1.0 ([8d68175](https://github.com/tepene/ublue-bayou/commit/8d68175e48061ac9b19b4cd2496d4fdd2c37111e))

## Changelog
