// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[GetEffectivePermissionsForPathOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetEffectivePermissionsForPathInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetEffectivePermissionsForPathOutputResponse`
extension LakeFormationClient {
    public func getEffectivePermissionsForPathPaginated(input: GetEffectivePermissionsForPathInput) -> ClientRuntime.PaginatorSequence<GetEffectivePermissionsForPathInput, GetEffectivePermissionsForPathOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetEffectivePermissionsForPathInput, GetEffectivePermissionsForPathOutputResponse>(input: input, inputKey: \GetEffectivePermissionsForPathInput.nextToken, outputKey: \GetEffectivePermissionsForPathOutputResponse.nextToken, paginationFunction: self.getEffectivePermissionsForPath(input:))
    }
}

extension GetEffectivePermissionsForPathInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetEffectivePermissionsForPathInput {
        return GetEffectivePermissionsForPathInput(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceArn: self.resourceArn
        )}
}

/// Paginate over `[GetTableObjectsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetTableObjectsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetTableObjectsOutputResponse`
extension LakeFormationClient {
    public func getTableObjectsPaginated(input: GetTableObjectsInput) -> ClientRuntime.PaginatorSequence<GetTableObjectsInput, GetTableObjectsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetTableObjectsInput, GetTableObjectsOutputResponse>(input: input, inputKey: \GetTableObjectsInput.nextToken, outputKey: \GetTableObjectsOutputResponse.nextToken, paginationFunction: self.getTableObjects(input:))
    }
}

extension GetTableObjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetTableObjectsInput {
        return GetTableObjectsInput(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            partitionPredicate: self.partitionPredicate,
            queryAsOfTime: self.queryAsOfTime,
            tableName: self.tableName,
            transactionId: self.transactionId
        )}
}

/// Paginate over `[GetWorkUnitsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[GetWorkUnitsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `GetWorkUnitsOutputResponse`
extension LakeFormationClient {
    public func getWorkUnitsPaginated(input: GetWorkUnitsInput) -> ClientRuntime.PaginatorSequence<GetWorkUnitsInput, GetWorkUnitsOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetWorkUnitsInput, GetWorkUnitsOutputResponse>(input: input, inputKey: \GetWorkUnitsInput.nextToken, outputKey: \GetWorkUnitsOutputResponse.nextToken, paginationFunction: self.getWorkUnits(input:))
    }
}

extension GetWorkUnitsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetWorkUnitsInput {
        return GetWorkUnitsInput(
            nextToken: token,
            pageSize: self.pageSize,
            queryId: self.queryId
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `getWorkUnitsPaginated`
/// to access the nested member `[LakeFormationClientTypes.WorkUnitRange]`
/// - Returns: `[LakeFormationClientTypes.WorkUnitRange]`
extension PaginatorSequence where Input == GetWorkUnitsInput, Output == GetWorkUnitsOutputResponse {
    public func workUnitRanges() async throws -> [LakeFormationClientTypes.WorkUnitRange] {
        return try await self.asyncCompactMap { item in item.workUnitRanges }
    }
}

/// Paginate over `[ListDataCellsFilterOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDataCellsFilterInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDataCellsFilterOutputResponse`
extension LakeFormationClient {
    public func listDataCellsFilterPaginated(input: ListDataCellsFilterInput) -> ClientRuntime.PaginatorSequence<ListDataCellsFilterInput, ListDataCellsFilterOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDataCellsFilterInput, ListDataCellsFilterOutputResponse>(input: input, inputKey: \ListDataCellsFilterInput.nextToken, outputKey: \ListDataCellsFilterOutputResponse.nextToken, paginationFunction: self.listDataCellsFilter(input:))
    }
}

extension ListDataCellsFilterInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDataCellsFilterInput {
        return ListDataCellsFilterInput(
            maxResults: self.maxResults,
            nextToken: token,
            table: self.table
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDataCellsFilterPaginated`
/// to access the nested member `[LakeFormationClientTypes.DataCellsFilter]`
/// - Returns: `[LakeFormationClientTypes.DataCellsFilter]`
extension PaginatorSequence where Input == ListDataCellsFilterInput, Output == ListDataCellsFilterOutputResponse {
    public func dataCellsFilters() async throws -> [LakeFormationClientTypes.DataCellsFilter] {
        return try await self.asyncCompactMap { item in item.dataCellsFilters }
    }
}

/// Paginate over `[ListLFTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListLFTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListLFTagsOutputResponse`
extension LakeFormationClient {
    public func listLFTagsPaginated(input: ListLFTagsInput) -> ClientRuntime.PaginatorSequence<ListLFTagsInput, ListLFTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListLFTagsInput, ListLFTagsOutputResponse>(input: input, inputKey: \ListLFTagsInput.nextToken, outputKey: \ListLFTagsOutputResponse.nextToken, paginationFunction: self.listLFTags(input:))
    }
}

extension ListLFTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLFTagsInput {
        return ListLFTagsInput(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            resourceShareType: self.resourceShareType
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listLFTagsPaginated`
/// to access the nested member `[LakeFormationClientTypes.LFTagPair]`
/// - Returns: `[LakeFormationClientTypes.LFTagPair]`
extension PaginatorSequence where Input == ListLFTagsInput, Output == ListLFTagsOutputResponse {
    public func lfTags() async throws -> [LakeFormationClientTypes.LFTagPair] {
        return try await self.asyncCompactMap { item in item.lfTags }
    }
}

/// Paginate over `[ListPermissionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListPermissionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListPermissionsOutputResponse`
extension LakeFormationClient {
    public func listPermissionsPaginated(input: ListPermissionsInput) -> ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPermissionsInput, ListPermissionsOutputResponse>(input: input, inputKey: \ListPermissionsInput.nextToken, outputKey: \ListPermissionsOutputResponse.nextToken, paginationFunction: self.listPermissions(input:))
    }
}

extension ListPermissionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPermissionsInput {
        return ListPermissionsInput(
            catalogId: self.catalogId,
            includeRelated: self.includeRelated,
            maxResults: self.maxResults,
            nextToken: token,
            principal: self.principal,
            resource: self.resource,
            resourceType: self.resourceType
        )}
}

/// Paginate over `[ListResourcesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListResourcesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListResourcesOutputResponse`
extension LakeFormationClient {
    public func listResourcesPaginated(input: ListResourcesInput) -> ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListResourcesInput, ListResourcesOutputResponse>(input: input, inputKey: \ListResourcesInput.nextToken, outputKey: \ListResourcesOutputResponse.nextToken, paginationFunction: self.listResources(input:))
    }
}

extension ListResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourcesInput {
        return ListResourcesInput(
            filterConditionList: self.filterConditionList,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// Paginate over `[ListTableStorageOptimizersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTableStorageOptimizersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTableStorageOptimizersOutputResponse`
extension LakeFormationClient {
    public func listTableStorageOptimizersPaginated(input: ListTableStorageOptimizersInput) -> ClientRuntime.PaginatorSequence<ListTableStorageOptimizersInput, ListTableStorageOptimizersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTableStorageOptimizersInput, ListTableStorageOptimizersOutputResponse>(input: input, inputKey: \ListTableStorageOptimizersInput.nextToken, outputKey: \ListTableStorageOptimizersOutputResponse.nextToken, paginationFunction: self.listTableStorageOptimizers(input:))
    }
}

extension ListTableStorageOptimizersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTableStorageOptimizersInput {
        return ListTableStorageOptimizersInput(
            catalogId: self.catalogId,
            databaseName: self.databaseName,
            maxResults: self.maxResults,
            nextToken: token,
            storageOptimizerType: self.storageOptimizerType,
            tableName: self.tableName
        )}
}

/// Paginate over `[ListTransactionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTransactionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTransactionsOutputResponse`
extension LakeFormationClient {
    public func listTransactionsPaginated(input: ListTransactionsInput) -> ClientRuntime.PaginatorSequence<ListTransactionsInput, ListTransactionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTransactionsInput, ListTransactionsOutputResponse>(input: input, inputKey: \ListTransactionsInput.nextToken, outputKey: \ListTransactionsOutputResponse.nextToken, paginationFunction: self.listTransactions(input:))
    }
}

extension ListTransactionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTransactionsInput {
        return ListTransactionsInput(
            catalogId: self.catalogId,
            maxResults: self.maxResults,
            nextToken: token,
            statusFilter: self.statusFilter
        )}
}

/// Paginate over `[SearchDatabasesByLFTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchDatabasesByLFTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchDatabasesByLFTagsOutputResponse`
extension LakeFormationClient {
    public func searchDatabasesByLFTagsPaginated(input: SearchDatabasesByLFTagsInput) -> ClientRuntime.PaginatorSequence<SearchDatabasesByLFTagsInput, SearchDatabasesByLFTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchDatabasesByLFTagsInput, SearchDatabasesByLFTagsOutputResponse>(input: input, inputKey: \SearchDatabasesByLFTagsInput.nextToken, outputKey: \SearchDatabasesByLFTagsOutputResponse.nextToken, paginationFunction: self.searchDatabasesByLFTags(input:))
    }
}

extension SearchDatabasesByLFTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchDatabasesByLFTagsInput {
        return SearchDatabasesByLFTagsInput(
            catalogId: self.catalogId,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `searchDatabasesByLFTagsPaginated`
/// to access the nested member `[LakeFormationClientTypes.TaggedDatabase]`
/// - Returns: `[LakeFormationClientTypes.TaggedDatabase]`
extension PaginatorSequence where Input == SearchDatabasesByLFTagsInput, Output == SearchDatabasesByLFTagsOutputResponse {
    public func databaseList() async throws -> [LakeFormationClientTypes.TaggedDatabase] {
        return try await self.asyncCompactMap { item in item.databaseList }
    }
}

/// Paginate over `[SearchTablesByLFTagsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[SearchTablesByLFTagsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `SearchTablesByLFTagsOutputResponse`
extension LakeFormationClient {
    public func searchTablesByLFTagsPaginated(input: SearchTablesByLFTagsInput) -> ClientRuntime.PaginatorSequence<SearchTablesByLFTagsInput, SearchTablesByLFTagsOutputResponse> {
        return ClientRuntime.PaginatorSequence<SearchTablesByLFTagsInput, SearchTablesByLFTagsOutputResponse>(input: input, inputKey: \SearchTablesByLFTagsInput.nextToken, outputKey: \SearchTablesByLFTagsOutputResponse.nextToken, paginationFunction: self.searchTablesByLFTags(input:))
    }
}

extension SearchTablesByLFTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchTablesByLFTagsInput {
        return SearchTablesByLFTagsInput(
            catalogId: self.catalogId,
            expression: self.expression,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `searchTablesByLFTagsPaginated`
/// to access the nested member `[LakeFormationClientTypes.TaggedTable]`
/// - Returns: `[LakeFormationClientTypes.TaggedTable]`
extension PaginatorSequence where Input == SearchTablesByLFTagsInput, Output == SearchTablesByLFTagsOutputResponse {
    public func tableList() async throws -> [LakeFormationClientTypes.TaggedTable] {
        return try await self.asyncCompactMap { item in item.tableList }
    }
}
