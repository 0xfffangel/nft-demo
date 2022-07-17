const DemoNFT = artifacts.require("./DemoNFT.sol");

module.exports = async (deployer, network, addresses) => {
  // OpenSea proxy registry addresses for rinkeby and mainnet.
  let proxyRegistryAddress = "";
  if (network === 'rinkeby') {
    proxyRegistryAddress = "0x1E525EEAF261cA41b809884CBDE9DD9E1619573A";
  } else {
    proxyRegistryAddress = "0xa5409ec958c83c3f309868babaca7c86dcb077c1";
  }

  await deployer.deploy(DemoNFT, proxyRegistryAddress);
}
