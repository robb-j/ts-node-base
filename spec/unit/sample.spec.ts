import App from 'src/App'
import { expect } from 'chai'

describe('sample', function() {
  let app: App
  beforeEach(function() {
    app = new App()
  })

  it('should exist', function() {
    expect(app).to.exist
  })
})
