//
//  ClientConfiguration.swift
//
//  Copyright © 2024 Gini GmbH. All rights reserved.
//


import Foundation

/**
 A struct representing configuration settings.
 
 This struct holds various configuration options that can be used to customize the behavior and features.
 */
public struct ClientConfiguration: Decodable {
    /**
     Creates a new `ClientConfiguration` instance.

     - parameter clientID: A unique identifier for the client.
     - parameter userJourneyAnalyticsEnabled: A flag indicating whether user journey analytics is enabled.
     - parameter amplitudeApiKey: An optional API key for Amplitude integration. Defaults to `nil`.
     - parameter skontoEnabled: A flag indicating whether Skonto is enabled.
     - parameter returnAssistantEnabled: A flag indicating whether the return assistant feature is enabled.
     */
    public init(clientID: String,
                userJourneyAnalyticsEnabled: Bool,
                amplitudeApiKey: String? = nil,
                skontoEnabled: Bool,
                returnAssistantEnabled: Bool) {
        self.clientID = clientID
        self.userJourneyAnalyticsEnabled = userJourneyAnalyticsEnabled
        self.amplitudeApiKey = amplitudeApiKey
        self.skontoEnabled = skontoEnabled
        self.returnAssistantEnabled = returnAssistantEnabled
    }
    
    public let clientID: String
    public let userJourneyAnalyticsEnabled: Bool
    public let amplitudeApiKey: String?
    public let skontoEnabled: Bool
    public let returnAssistantEnabled: Bool
}
