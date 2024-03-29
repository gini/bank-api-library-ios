//
//  ExtractionResult.swift
//  GiniBankAPI
//
//  Created by Maciej Trybilo on 13.02.20.
//

import Foundation

/**
* Data model for a document extraction result.
*/
@objcMembers final public class ExtractionResult: NSObject {

    /// The specific extractions.
    public let extractions: [Extraction]
    
    /// The line item compound extractions.
    public var lineItems: [[Extraction]]?
    
    // Return reasons from which users can pick one when deselecting line items.
    public var returnReasons: [ReturnReason]?
    
    /// The extraction candidates.
    public let candidates: [String: [Extraction.Candidate]]
    
    public init(extractions: [Extraction],
                lineItems: [[Extraction]]?,
                returnReasons: [ReturnReason]?,
                candidates: [String: [Extraction.Candidate]]) {
        self.extractions = extractions
        self.lineItems = lineItems
        self.returnReasons = returnReasons
        self.candidates = candidates
        
        super.init()
    }
    
    convenience init(extractionsContainer: ExtractionsContainer) {
        
        self.init(extractions: extractionsContainer.extractions,
                  lineItems: extractionsContainer.compoundExtractions?["lineItems"],
                  returnReasons: extractionsContainer.returnReasons,
                  candidates: extractionsContainer.candidates)
    }
}
