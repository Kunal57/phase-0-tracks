# View HTTP Requests

### What are some common HTTP status codes?

- Informational
	100 - Continue
	101 - Switching Protocols

- Successful
	200 - OK
	201 - Created
	202 - Accepted 
	203 - Non-Authoritative Information
	204 - No Content
	205 - Reset Content
	206 - Partial Content

- Redirection
	300 - Multiple Choices
	301 - Moved Permanently
	302 - Found
	303 - See Others
	304 - Not Modified
	305 - Use Proxy
	307 - Temporary Redirect

- Client Error
	400 - Bad Request
	401 - Unauthorized
	402 - Payment Required
	403 - Forbidden
	404 - Not Found
	405 - Method Not Allowed
	406 - Not Acceptable
	407 - Proxy Authentication Required
	408 - Request Timeout
	409 - Conflict
	410 - Gone
	411 - Length Required
	412 - Precondition Failed
	413 - Request Entity Too Large
	414 - Request URI Too Long
	415 - Unsupported Media Type
	416 - Requested Range Not Satisfiable
	417 - Expectation Failed

- Server Error
	500 - Internal Server Error
	501 - Not Implemented
	502 - Bad Gateway
	503 - Service Unavailable
	504 - Gateway Timeout
	505 - HTTP Version Not Supported


#### 5 Common HTTP Errors

- HTTP ERROR 401 (Unauthorized)
	Error occurs when a website visitor tries to access a restricted web page but isn't authorized to do so, usually because of a failed login attempt.

- HTTP ERROR 400 (Bad Request)
	Error occurs when a visitor incorrectly accesses a web server/page or that the request was corrupted on the way. 

- HTTP ERROR 404 (Forbidden)
	Similar to ERROR 401, this error differs because no login opportunity was available. The visitor tried to access a forbidden directory on a website.

- HTTP ERROR 404 (Not Found)
	Error occurs when a visitor tries to access a resource on a web server that doesn't exist. This can be because of a broken link, a mistyped URL, or that the webmaster had moved the requested page elsewhere.

- HTTP ERROR 500 (Internal Server Error)
	Error occurs when the web server encounters some form of internal error. For example, the web server could be overloaded and therefore unable to handle requests properly.


### What is the difference between a GET request and a POST request? When might each be used?

- GET : Used to retrieve remote data.
- POST : Used to insert/update remote data.

### What is a cookie? How does it relate to HTTP requests?

- A HTTP cookie is a small piece of data sent from a website and stored in the user's web browser while the user is browsing. 

- Cookies were designed to be a reliable mechanism for websites to remember stateful information (items added to a shopping cart online) or to record a user's browsing activity (login information, pages visited in the past). 
