// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListDocumentClassificationJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDocumentClassificationJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassificationJobsOutputResponse`
extension ComprehendClient {
    public func listDocumentClassificationJobsPaginated(input: ListDocumentClassificationJobsInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassificationJobsInput, ListDocumentClassificationJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassificationJobsInput, ListDocumentClassificationJobsOutputResponse>(input: input, inputKey: \ListDocumentClassificationJobsInput.nextToken, outputKey: \ListDocumentClassificationJobsOutputResponse.nextToken, paginationFunction: self.listDocumentClassificationJobs(input:))
    }
}

extension ListDocumentClassificationJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassificationJobsInput {
        return ListDocumentClassificationJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListDocumentClassifiersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDocumentClassifiersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassifiersOutputResponse`
extension ComprehendClient {
    public func listDocumentClassifiersPaginated(input: ListDocumentClassifiersInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassifiersInput, ListDocumentClassifiersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassifiersInput, ListDocumentClassifiersOutputResponse>(input: input, inputKey: \ListDocumentClassifiersInput.nextToken, outputKey: \ListDocumentClassifiersOutputResponse.nextToken, paginationFunction: self.listDocumentClassifiers(input:))
    }
}

extension ListDocumentClassifiersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassifiersInput {
        return ListDocumentClassifiersInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListDocumentClassifierSummariesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDocumentClassifierSummariesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDocumentClassifierSummariesOutputResponse`
extension ComprehendClient {
    public func listDocumentClassifierSummariesPaginated(input: ListDocumentClassifierSummariesInput) -> ClientRuntime.PaginatorSequence<ListDocumentClassifierSummariesInput, ListDocumentClassifierSummariesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDocumentClassifierSummariesInput, ListDocumentClassifierSummariesOutputResponse>(input: input, inputKey: \ListDocumentClassifierSummariesInput.nextToken, outputKey: \ListDocumentClassifierSummariesOutputResponse.nextToken, paginationFunction: self.listDocumentClassifierSummaries(input:))
    }
}

extension ListDocumentClassifierSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDocumentClassifierSummariesInput {
        return ListDocumentClassifierSummariesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListDominantLanguageDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDominantLanguageDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDominantLanguageDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listDominantLanguageDetectionJobsPaginated(input: ListDominantLanguageDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListDominantLanguageDetectionJobsInput, ListDominantLanguageDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDominantLanguageDetectionJobsInput, ListDominantLanguageDetectionJobsOutputResponse>(input: input, inputKey: \ListDominantLanguageDetectionJobsInput.nextToken, outputKey: \ListDominantLanguageDetectionJobsOutputResponse.nextToken, paginationFunction: self.listDominantLanguageDetectionJobs(input:))
    }
}

extension ListDominantLanguageDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDominantLanguageDetectionJobsInput {
        return ListDominantLanguageDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListEndpointsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEndpointsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEndpointsOutputResponse`
extension ComprehendClient {
    public func listEndpointsPaginated(input: ListEndpointsInput) -> ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEndpointsInput, ListEndpointsOutputResponse>(input: input, inputKey: \ListEndpointsInput.nextToken, outputKey: \ListEndpointsOutputResponse.nextToken, paginationFunction: self.listEndpoints(input:))
    }
}

extension ListEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEndpointsInput {
        return ListEndpointsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEndpointsPaginated`
/// to access the nested member `[ComprehendClientTypes.EndpointProperties]`
/// - Returns: `[ComprehendClientTypes.EndpointProperties]`
extension PaginatorSequence where Input == ListEndpointsInput, Output == ListEndpointsOutputResponse {
    public func endpointPropertiesList() async throws -> [ComprehendClientTypes.EndpointProperties] {
        return try await self.asyncCompactMap { item in item.endpointPropertiesList }
    }
}

/// Paginate over `[ListEntitiesDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEntitiesDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEntitiesDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listEntitiesDetectionJobsPaginated(input: ListEntitiesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListEntitiesDetectionJobsInput, ListEntitiesDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntitiesDetectionJobsInput, ListEntitiesDetectionJobsOutputResponse>(input: input, inputKey: \ListEntitiesDetectionJobsInput.nextToken, outputKey: \ListEntitiesDetectionJobsOutputResponse.nextToken, paginationFunction: self.listEntitiesDetectionJobs(input:))
    }
}

extension ListEntitiesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntitiesDetectionJobsInput {
        return ListEntitiesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListEntityRecognizersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEntityRecognizersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEntityRecognizersOutputResponse`
extension ComprehendClient {
    public func listEntityRecognizersPaginated(input: ListEntityRecognizersInput) -> ClientRuntime.PaginatorSequence<ListEntityRecognizersInput, ListEntityRecognizersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntityRecognizersInput, ListEntityRecognizersOutputResponse>(input: input, inputKey: \ListEntityRecognizersInput.nextToken, outputKey: \ListEntityRecognizersOutputResponse.nextToken, paginationFunction: self.listEntityRecognizers(input:))
    }
}

extension ListEntityRecognizersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntityRecognizersInput {
        return ListEntityRecognizersInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListEntityRecognizerSummariesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEntityRecognizerSummariesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEntityRecognizerSummariesOutputResponse`
extension ComprehendClient {
    public func listEntityRecognizerSummariesPaginated(input: ListEntityRecognizerSummariesInput) -> ClientRuntime.PaginatorSequence<ListEntityRecognizerSummariesInput, ListEntityRecognizerSummariesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEntityRecognizerSummariesInput, ListEntityRecognizerSummariesOutputResponse>(input: input, inputKey: \ListEntityRecognizerSummariesInput.nextToken, outputKey: \ListEntityRecognizerSummariesOutputResponse.nextToken, paginationFunction: self.listEntityRecognizerSummaries(input:))
    }
}

extension ListEntityRecognizerSummariesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEntityRecognizerSummariesInput {
        return ListEntityRecognizerSummariesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListEventsDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEventsDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEventsDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listEventsDetectionJobsPaginated(input: ListEventsDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListEventsDetectionJobsInput, ListEventsDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEventsDetectionJobsInput, ListEventsDetectionJobsOutputResponse>(input: input, inputKey: \ListEventsDetectionJobsInput.nextToken, outputKey: \ListEventsDetectionJobsOutputResponse.nextToken, paginationFunction: self.listEventsDetectionJobs(input:))
    }
}

extension ListEventsDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventsDetectionJobsInput {
        return ListEventsDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListKeyPhrasesDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListKeyPhrasesDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListKeyPhrasesDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listKeyPhrasesDetectionJobsPaginated(input: ListKeyPhrasesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListKeyPhrasesDetectionJobsInput, ListKeyPhrasesDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListKeyPhrasesDetectionJobsInput, ListKeyPhrasesDetectionJobsOutputResponse>(input: input, inputKey: \ListKeyPhrasesDetectionJobsInput.nextToken, outputKey: \ListKeyPhrasesDetectionJobsOutputResponse.nextToken, paginationFunction: self.listKeyPhrasesDetectionJobs(input:))
    }
}

extension ListKeyPhrasesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeyPhrasesDetectionJobsInput {
        return ListKeyPhrasesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListPiiEntitiesDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPiiEntitiesDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPiiEntitiesDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listPiiEntitiesDetectionJobsPaginated(input: ListPiiEntitiesDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListPiiEntitiesDetectionJobsInput, ListPiiEntitiesDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPiiEntitiesDetectionJobsInput, ListPiiEntitiesDetectionJobsOutputResponse>(input: input, inputKey: \ListPiiEntitiesDetectionJobsInput.nextToken, outputKey: \ListPiiEntitiesDetectionJobsOutputResponse.nextToken, paginationFunction: self.listPiiEntitiesDetectionJobs(input:))
    }
}

extension ListPiiEntitiesDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPiiEntitiesDetectionJobsInput {
        return ListPiiEntitiesDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listPiiEntitiesDetectionJobsPaginated`
/// to access the nested member `[ComprehendClientTypes.PiiEntitiesDetectionJobProperties]`
/// - Returns: `[ComprehendClientTypes.PiiEntitiesDetectionJobProperties]`
extension PaginatorSequence where Input == ListPiiEntitiesDetectionJobsInput, Output == ListPiiEntitiesDetectionJobsOutputResponse {
    public func piiEntitiesDetectionJobPropertiesList() async throws -> [ComprehendClientTypes.PiiEntitiesDetectionJobProperties] {
        return try await self.asyncCompactMap { item in item.piiEntitiesDetectionJobPropertiesList }
    }
}

/// Paginate over `[ListSentimentDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSentimentDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSentimentDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listSentimentDetectionJobsPaginated(input: ListSentimentDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListSentimentDetectionJobsInput, ListSentimentDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSentimentDetectionJobsInput, ListSentimentDetectionJobsOutputResponse>(input: input, inputKey: \ListSentimentDetectionJobsInput.nextToken, outputKey: \ListSentimentDetectionJobsOutputResponse.nextToken, paginationFunction: self.listSentimentDetectionJobs(input:))
    }
}

extension ListSentimentDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSentimentDetectionJobsInput {
        return ListSentimentDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTargetedSentimentDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTargetedSentimentDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTargetedSentimentDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listTargetedSentimentDetectionJobsPaginated(input: ListTargetedSentimentDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListTargetedSentimentDetectionJobsInput, ListTargetedSentimentDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTargetedSentimentDetectionJobsInput, ListTargetedSentimentDetectionJobsOutputResponse>(input: input, inputKey: \ListTargetedSentimentDetectionJobsInput.nextToken, outputKey: \ListTargetedSentimentDetectionJobsOutputResponse.nextToken, paginationFunction: self.listTargetedSentimentDetectionJobs(input:))
    }
}

extension ListTargetedSentimentDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTargetedSentimentDetectionJobsInput {
        return ListTargetedSentimentDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTopicsDetectionJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTopicsDetectionJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTopicsDetectionJobsOutputResponse`
extension ComprehendClient {
    public func listTopicsDetectionJobsPaginated(input: ListTopicsDetectionJobsInput) -> ClientRuntime.PaginatorSequence<ListTopicsDetectionJobsInput, ListTopicsDetectionJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTopicsDetectionJobsInput, ListTopicsDetectionJobsOutputResponse>(input: input, inputKey: \ListTopicsDetectionJobsInput.nextToken, outputKey: \ListTopicsDetectionJobsOutputResponse.nextToken, paginationFunction: self.listTopicsDetectionJobs(input:))
    }
}

extension ListTopicsDetectionJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTopicsDetectionJobsInput {
        return ListTopicsDetectionJobsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
