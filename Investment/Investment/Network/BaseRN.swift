//
//  BaseRN.swift
//  Investment
//
//  Created by Thyago on 16/09/19.
//  Copyright © 2019 tcasablancas. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper

protocol BaseDelegate {
    
    func onReceiveData(fromClass: AnyClass, param: Int, result: Bool, object: AnyObject?)
}

class BaseRN {
    
    var urlScreen = "https://floating-mountain-50292.herokuapp.com/fund.json"
    
    var delegate: BaseDelegate?
    
    internal var currentViewController: UIViewController?
    
    init(delegate: BaseDelegate) {
        
        self.delegate = delegate
    }
    
    func dataResponse() {
        
        
    }
    
    func getDataObj<T:BasePojo>(_ type: T.Type, serviceResponse: DataResponse<T>) -> String {
        
        return DataResponse.body!.data?.toJSONString() ?? "{}"
    }
    
    static func getData(completion: @escaping ([InvestCells]?) -> ()) {
        let urlScreen = "https://floating-mountain-50292.herokuapp.com/fund.json"
       // let headers = Headers.authorization()
        
        Alamofire.request(urlScreen).responseArray { (response: DataResponse<[InvestCells]>)  in
            
            let integration = response.result.value
            print(integration!)
            
            completion(integration)
            
        }
    }
    
    
//    func callApi<R:BasePojo>(_ response: R.Type, request: URLRequest) {
//
//        // Check connection offline
//        //
//        //
//
//        let response = RestApi().execute(request)
//
//        // Extract error optional
//        if let err = response.1 {
//
//            // Verificar timeout
//
//            Log.print(err, typePrint: .warning)
//            Log.print(err.localizedDescription, typePrint: .warning)
//
//            return defaultResponseEmpty
//        }
//
//        // Extract data optional
//        if let data = response.0 {
//
//            Log.print("dataResponse \(R.self): \n\(String(data: data, encoding: .utf8)!)")
//
//
//            let serviceGenericResponse = Mapper<ServiceResponse<R>>().map(JSONString: String(data: data, encoding: .utf8)!)
//            serviceResponse = serviceGenericResponse
//        }
//
//        //If it's null, create a new instance to test
//        if serviceResponse == nil {
//            serviceResponse = ServiceResponse<R>(header: BodyHeaderResponse(), body: nil)
//        }
//
//        // Extract optional
//        if let serviceResponse = serviceResponse {
//
//            //If has no answer
//            if serviceResponse.body == nil {
//                sendContact(fromClass: UserRN.self, param: Param.Contact.NET_REQUEST_ERROR, result: true, object: nil)
//                return defaultResponseEmpty
//            }
//
//            // Extract optional
//            if let serviceBody = serviceResponse.body {
//
//                //If has answer but its was an error
//                if serviceBody.cod != ResponseCodes.RESPONSE_OK {
//
//                    //If it's a sequential error, defines the new sequential and call te api again
//                    if serviceBody.cod == ResponseCodes.SEQ_ERROR ||
//                        serviceBody.cod == ResponseCodes.SIGNTURE_ERROR {
//                        startReinitializeActivity()
//                        return defaultResponseEmpty
//                    }
//
//                    //Logout error
//                    if serviceBody.cod == ResponseCodes.USER_NOT_LOGGED {
//                        self.startWarningActivity(isLogout: true)
//                        return defaultResponseEmpty
//                    }
//
//                    //Web error are usually 400+
//                    if serviceBody.cod == ResponseCodes.GENERIC_APP_ERROR ||
//                        serviceBody.cod >= 400 {
//
//                        // Mostrar messagem
//                        Util.showAlertDefaultOK(self.getTopView(), message: serviceBody.showMessages())
//                        sendContact(fromClass: UserRN.self, param: Param.Contact.NET_REQUEST_ERROR, result: true, object: serviceBody.showMessages() as AnyObject)
//                    }
//                }
//            }
//
//            //If isn't true, should finish the app
//            if !RestHelper.verifyResponse(R.self, response: serviceResponse) {
//                sendContact(fromClass: UserRN.self, param: Param.Contact.FINISH_ACTIVITY, result: false, object: nil)
//                return defaultResponseEmpty
//            }
//
//            //If has data, it was successfully received
//            serviceResponse.sucess = true
//        }
//
//        return serviceResponse
//    }
    
//    func callApiDataInt(request: URLRequest, completion: @escaping (_ service: ServiceResponseDataInt) -> Void) {
//
//
//    }
}
