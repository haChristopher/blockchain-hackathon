from web3 import Web3, HTTPProvider, IPCProvider

# Note that you should create only one RPCProvider per
# process, as it recycles underlying TCP/IP network connections between
# your process and Ethereum node
web3 = Web3(HTTPProvider('http://10.0.5.203:8545'))
#web3.eth.blockNumber
print(web3.eth.blockNumber)
