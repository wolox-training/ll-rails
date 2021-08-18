def getBook
  stub_request(:path, path)
    .to_return(
      status: code,
      body: File.read('./spec/support/fixtures/*response_success.json'),
      headers: { 'Content-Type': 'application/json' }
    )
end