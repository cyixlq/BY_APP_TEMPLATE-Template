package ${kotlinEscapedPackageName}

class ${dataSourceRepositoryName}(
    private val remote: ${remoteDataSourceName} = ${remoteDataSourceName}(), 
    private val local: ${localDataSourceName} = ${localDataSourceName}()
)

class ${remoteDataSourceName}

class ${localDataSourceName}