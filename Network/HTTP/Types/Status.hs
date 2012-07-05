{-# LANGUAGE OverloadedStrings #-}
module Network.HTTP.Types.Status
(
  Status(..)
, status100
, continue100
, status101
, switchingProtocols101
, status200
, ok200
, status201
, created201
, status202
, accepted202
, status203
, nonAuthoritative203
, status204
, noContent204
, status205
, resetContent205
, status206
, partialContent206
, status300
, multipleChoices300
, status301
, movedPermanently301
, status302
, found302
, status303
, seeOther303
, status304
, notModified304
, status305
, useProxy305
, status307
, temporaryRedirect307
, status400
, badRequest400
, status401
, unauthorized401
, status402
, paymentRequired402
, status403
, forbidden403
, status404
, notFound404
, status405
, methodNotAllowed405
, status406
, notAcceptable406
, status407
, proxyAuthenticationRequired407
, status408
, requestTimeout408
, status409
, conflict409
, status410
, gone410
, status411
, lengthRequired411
, status412
, preconditionFailed412
, status413
, requestEntityTooLarge413
, status414
, requestURITooLong414
, status415
, unsupportedMediaType415
, status416
, requestedRangeNotSatisfiable416
, status417
, expectationFailed417
, status418
, imATeaPot418
, status500
, internalServerError500
, status501
, notImplemented501
, status502
, badGateway502
, status503
, serviceUnavailable503
, status504
, gatewayTimeout504
, status505
, httpVersionNotSupported505
)
where

import qualified Data.ByteString       as B
import           Data.ByteString.Char8 () {- IsString -}

-- | HTTP Status.
-- 
-- Only the 'statusCode' is used for comparisons.
-- 
-- Note that the Show instance is only for debugging.
data Status
    = Status {
        statusCode :: Int
      , statusMessage :: B.ByteString
      }
    deriving (Show)

instance Eq Status where
    Status { statusCode = a } == Status { statusCode = b } = a == b

instance Ord Status where
    compare Status { statusCode = a } Status { statusCode = b } = a `compare` b

-- | Continue 100
status100 :: Status
status100 = Status 100 "Continue"

-- | Continue 100
continue100 :: Status
continue100 = status100

-- | Switching Protocols 101
status101 :: Status
status101 = Status 101 "Switching Protocols"

-- | Switching Protocols 101
switchingProtocols101 :: Status
switchingProtocols101 = status101

-- | OK 200
status200 :: Status
status200 = Status 200 "OK"

-- | OK 200
ok200 :: Status
ok200 = status200

-- | Created 201
status201 :: Status
status201 = Status 201 "Created"

-- | Created 201
created201 :: Status
created201 = status201

-- | Accepted 202
status202 :: Status
status202 = Status 202 "Accepted"

-- | Accepted 202
accepted202 :: Status
accepted202 = status202

-- | Non-Authoritative Information 203
status203 :: Status
status203 = Status 203 "Non-Authoritative Information"

-- | Non-Authoritative Information 203
nonAuthoritative203 :: Status
nonAuthoritative203 = status203

-- | No Content 204
status204 :: Status
status204 = Status 204 "No Content"

-- | No Content 204
noContent204 :: Status
noContent204 = status204

-- | Reset Content 205
status205 :: Status
status205 = Status 205 "Reset Content"

-- | Reset Content 205
resetContent205 :: Status
resetContent205 = status205

-- | Partial Content 206
status206 :: Status
status206 = Status 206 "Partial Content"

-- | Partial Content 206
partialContent206 :: Status
partialContent206 = status206

-- | Multiple Choices 300
status300 :: Status
status300 = Status 300 "Multiple Choices"

-- | Multiple Choices 300
multipleChoices300 :: Status
multipleChoices300 = status300

-- | Moved Permanently 301
status301 :: Status
status301 = Status 301 "Moved Permanently"

-- | Moved Permanently 301
movedPermanently301 :: Status
movedPermanently301 = status301

-- | Found 302
status302 :: Status
status302 = Status 302 "Found"

-- | Found 302
found302 :: Status
found302 = status302

-- | See Other 303
status303 :: Status
status303 = Status 303 "See Other"

-- | See Other 303
seeOther303 :: Status
seeOther303 = status303

-- | Not Modified 304
status304 :: Status
status304 = Status 304 "Not Modified"

-- | Not Modified 304
notModified304 :: Status
notModified304 = status304

-- | Use Proxy 305
status305 :: Status
status305 = Status 305 "Use Proxy"

-- | Use Proxy 305
useProxy305 :: Status
useProxy305 = status305

-- | Temporary Redirect 307
status307 :: Status
status307 = Status 307 "Temporary Redirect"

-- | Temporary Redirect 307
temporaryRedirect307 :: Status
temporaryRedirect307 = status307

-- | Bad Request 400
status400 :: Status
status400 = Status 400 "Bad Request"

-- | Bad Request 400
badRequest400 :: Status
badRequest400 = status400

-- | Unauthorized 401
status401 :: Status
status401 = Status 401 "Unauthorized"

-- | Unauthorized 401
unauthorized401 :: Status
unauthorized401 = status401

-- | Payment Required 402
status402 :: Status
status402 = Status 402 "Payment Required"

-- | Payment Required 402
paymentRequired402 :: Status
paymentRequired402 = status402

-- | Forbidden 403
status403 :: Status
status403 = Status 403 "Forbidden"

-- | Forbidden 403
forbidden403 :: Status
forbidden403 = status403

-- | Not Found 404
status404 :: Status
status404 = Status 404 "Not Found"

-- | Not Found 404
notFound404 :: Status
notFound404 = status404

-- | Method Not Allowed 405
status405 :: Status
status405 = Status 405 "Method Not Allowed"

-- | Method Not Allowed 405
methodNotAllowed405 :: Status
methodNotAllowed405 = status405

-- | Not Acceptable 406
status406 :: Status
status406 = Status 406 "Not Acceptable"

-- | Not Acceptable 406
notAcceptable406 :: Status
notAcceptable406 = status406

-- | Proxy Authentication Required 407
status407 :: Status
status407 = Status 407 "Proxy Authentication Required"

-- | Proxy Authentication Required 407
proxyAuthenticationRequired407 :: Status
proxyAuthenticationRequired407 = status407

-- | Request Timeout 408
status408 :: Status
status408 = Status 408 "Request Timeout"

-- | Request Timeout 408
requestTimeout408 :: Status
requestTimeout408 = status408

-- | Conflict 409
status409 :: Status
status409 = Status 409 "Conflict"

-- | Conflict 409
conflict409 :: Status
conflict409 = status409

-- | Gone 410
status410 :: Status
status410 = Status 410 "Gone"

-- | Gone 410
gone410 :: Status
gone410 = status410

-- | Length Required 411
status411 :: Status
status411 = Status 411 "Length Required"

-- | Length Required 411
lengthRequired411 :: Status
lengthRequired411 = status411

-- | Precondition Failed 412
status412 :: Status
status412 = Status 412 "Precondition Failed"

-- | Precondition Failed 412
preconditionFailed412 :: Status
preconditionFailed412 = status412

-- | Request Entity Too Large 413
status413 :: Status
status413 = Status 413 "Request Entity Too Large"

-- | Request Entity Too Large 413
requestEntityTooLarge413 :: Status
requestEntityTooLarge413 = status413

-- | Request-URI Too Long 414
status414 :: Status
status414 = Status 414 "Request-URI Too Long"

-- | Request-URI Too Long 414
requestURITooLong414 :: Status
requestURITooLong414 = status414

-- | Unsupported Media Type 415
status415 :: Status
status415 = Status 415 "Unsupported Media Type"

-- | Unsupported Media Type 415
unsupportedMediaType415 :: Status
unsupportedMediaType415 = status415

-- | Requested Range Not Satisfiable 416
status416 :: Status
status416 = Status 416 "Requested Range Not Satisfiable"

-- | Requested Range Not Satisfiable 416
requestedRangeNotSatisfiable416 :: Status
requestedRangeNotSatisfiable416 = status416

-- | Expectation Failed 417
status417 :: Status
status417 = Status 417 "Expectation Failed"

-- | Expectation Failed 417
expectationFailed417 :: Status
expectationFailed417 = status417

-- | I'm a teapot 418
status418 :: Status
status418 = Status 418 "I'm a teapot"

-- | I'm a teapot 418
imATeaPot418 :: Status
imATeaPot418 = status418

-- | Internal Server Error 500
status500 :: Status
status500 = Status 500 "Internal Server Error"

-- | Internal Server Error 500
internalServerError500 :: Status
internalServerError500 = status500

-- | Not Implemented 501
status501 :: Status
status501 = Status 501 "Not Implemented"

-- | Not Implemented 501
notImplemented501 :: Status
notImplemented501 = status501

-- | Bad Gateway 502
status502 :: Status
status502 = Status 502 "Bad Gateway"

-- | Bad Gateway 502
badGateway502 :: Status
badGateway502 = status502

-- | Service Unavailable 503
status503 :: Status
status503 = Status 503 "Service Unavailable"

-- | Service Unavailable 503
serviceUnavailable503 :: Status
serviceUnavailable503 = status503

-- | Gateway Timeout 504
status504 :: Status
status504 = Status 504 "Gateway Timeout"

-- | Gateway Timeout 504
gatewayTimeout504 :: Status
gatewayTimeout504 = status504

-- | HTTP Version Not Supported 505
status505 :: Status
status505 = Status 505 "HTTP Version Not Supported"

-- | HTTP Version Not Supported 505
httpVersionNotSupported505 :: Status
httpVersionNotSupported505 = status505