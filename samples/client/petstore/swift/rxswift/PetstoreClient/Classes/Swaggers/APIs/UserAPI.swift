//
// UserAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import RxSwift



public class UserAPI: APIBase {
    /**
     Create user
     
     - parameter body: (body) Created user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUser(body body: User? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUserWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Create user
     
     - parameter body: (body) Created user object (optional)
     - returns: Observable<Void>
     */
    public class func createUser(body body: User? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUser(body: body) { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Create user
     - POST /user
     - This can only be done by the logged in user.
     
     - parameter body: (body) Created user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUserWithRequestBuilder(body body: User? = nil) -> RequestBuilder<Void> {
        let path = "/user"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUsersWithArrayInput(body body: [User]? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUsersWithArrayInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - returns: Observable<Void>
     */
    public class func createUsersWithArrayInput(body body: [User]? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUsersWithArrayInput(body: body) { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithArray
     - 
     
     - parameter body: (body) List of user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUsersWithArrayInputWithRequestBuilder(body body: [User]? = nil) -> RequestBuilder<Void> {
        let path = "/user/createWithArray"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func createUsersWithListInput(body body: [User]? = nil, completion: ((error: ErrorType?) -> Void)) {
        createUsersWithListInputWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Creates list of users with given input array
     
     - parameter body: (body) List of user object (optional)
     - returns: Observable<Void>
     */
    public class func createUsersWithListInput(body body: [User]? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            createUsersWithListInput(body: body) { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Creates list of users with given input array
     - POST /user/createWithList
     - 
     
     - parameter body: (body) List of user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func createUsersWithListInputWithRequestBuilder(body body: [User]? = nil) -> RequestBuilder<Void> {
        let path = "/user/createWithList"
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func deleteUser(username username: String, completion: ((error: ErrorType?) -> Void)) {
        deleteUserWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Delete user
     
     - parameter username: (path) The name that needs to be deleted 
     - returns: Observable<Void>
     */
    public class func deleteUser(username username: String) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            deleteUser(username: username) { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Delete user
     - DELETE /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) The name that needs to be deleted 

     - returns: RequestBuilder<Void> 
     */
    public class func deleteUserWithRequestBuilder(username username: String) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func getUserByName(username username: String, completion: ((data: User?, error: ErrorType?) -> Void)) {
        getUserByNameWithRequestBuilder(username: username).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Get user by user name
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  
     - returns: Observable<User>
     */
    public class func getUserByName(username username: String) -> Observable<User> {
        return Observable.create { observer -> Disposable in
            getUserByName(username: username) { data, error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next(data!))
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Get user by user name
     - GET /user/{username}
     - 
     - examples: [{contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 6,
  "phone" : "aeiou",
  "id" : 0,
  "email" : "aeiou",
  "username" : "aeiou"
}}, {contentType=application/xml, example=<User>
  <id>123456789</id>
  <username>aeiou</username>
  <firstName>aeiou</firstName>
  <lastName>aeiou</lastName>
  <email>aeiou</email>
  <password>aeiou</password>
  <phone>aeiou</phone>
  <userStatus>123</userStatus>
</User>}]
     - examples: [{contentType=application/json, example={
  "firstName" : "aeiou",
  "lastName" : "aeiou",
  "password" : "aeiou",
  "userStatus" : 6,
  "phone" : "aeiou",
  "id" : 0,
  "email" : "aeiou",
  "username" : "aeiou"
}}, {contentType=application/xml, example=<User>
  <id>123456789</id>
  <username>aeiou</username>
  <firstName>aeiou</firstName>
  <lastName>aeiou</lastName>
  <email>aeiou</email>
  <password>aeiou</password>
  <phone>aeiou</phone>
  <userStatus>123</userStatus>
</User>}]
     
     - parameter username: (path) The name that needs to be fetched. Use user1 for testing.  

     - returns: RequestBuilder<User> 
     */
    public class func getUserByNameWithRequestBuilder(username username: String) -> RequestBuilder<User> {
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<User>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func loginUser(username username: String? = nil, password: String? = nil, completion: ((data: String?, error: ErrorType?) -> Void)) {
        loginUserWithRequestBuilder(username: username, password: password).execute { (response, error) -> Void in
            completion(data: response?.body, error: error);
        }
    }

    /**
     Logs user into the system
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)
     - returns: Observable<String>
     */
    public class func loginUser(username username: String? = nil, password: String? = nil) -> Observable<String> {
        return Observable.create { observer -> Disposable in
            loginUser(username: username, password: password) { data, error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next(data!))
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Logs user into the system
     - GET /user/login
     - 
     - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=aeiou}]
     - examples: [{contentType=application/json, example="aeiou"}, {contentType=application/xml, example=aeiou}]
     
     - parameter username: (query) The user name for login (optional)
     - parameter password: (query) The password for login in clear text (optional)

     - returns: RequestBuilder<String> 
     */
    public class func loginUserWithRequestBuilder(username username: String? = nil, password: String? = nil) -> RequestBuilder<String> {
        let path = "/user/login"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [
            "username": username,
            "password": password
        ]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<String>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: false)
    }

    /**
     Logs out current logged in user session
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func logoutUser(completion: ((error: ErrorType?) -> Void)) {
        logoutUserWithRequestBuilder().execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Logs out current logged in user session
     
     - returns: Observable<Void>
     */
    public class func logoutUser() -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            logoutUser() { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Logs out current logged in user session
     - GET /user/logout
     - 

     - returns: RequestBuilder<Void> 
     */
    public class func logoutUserWithRequestBuilder() -> RequestBuilder<Void> {
        let path = "/user/logout"
        let URLString = PetstoreClientAPI.basePath + path

        let nillableParameters: [String:AnyObject?] = [:]
 
        let parameters = APIHelper.rejectNil(nillableParameters)
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    public class func updateUser(username username: String, body: User? = nil, completion: ((error: ErrorType?) -> Void)) {
        updateUserWithRequestBuilder(username: username, body: body).execute { (response, error) -> Void in
            completion(error: error);
        }
    }

    /**
     Updated user
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)
     - returns: Observable<Void>
     */
    public class func updateUser(username username: String, body: User? = nil) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            updateUser(username: username, body: body) { error in
                if let error = error {
                    observer.on(.Error(error as ErrorType))
                } else {
                    observer.on(.Next())
                }
                observer.on(.Completed)
            }
            return NopDisposable.instance
        }
    }

    /**
     Updated user
     - PUT /user/{username}
     - This can only be done by the logged in user.
     
     - parameter username: (path) name that need to be deleted 
     - parameter body: (body) Updated user object (optional)

     - returns: RequestBuilder<Void> 
     */
    public class func updateUserWithRequestBuilder(username username: String, body: User? = nil) -> RequestBuilder<Void> {
        var path = "/user/{username}"
        path = path.stringByReplacingOccurrencesOfString("{username}", withString: "\(username)", options: .LiteralSearch, range: nil)
        let URLString = PetstoreClientAPI.basePath + path
        let parameters = body?.encodeToJSON() as? [String:AnyObject]
 
        let convertedParameters = APIHelper.convertBoolToString(parameters)
 
        let requestBuilder: RequestBuilder<Void>.Type = PetstoreClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: URLString, parameters: convertedParameters, isBody: true)
    }

}
