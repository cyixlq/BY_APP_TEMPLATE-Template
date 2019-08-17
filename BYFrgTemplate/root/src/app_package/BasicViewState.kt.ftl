package ${kotlinEscapedPackageName}

data class ${viewStateName}(
    val isLoading: Boolean = false,
    val throwable: Throwable? = null
) {
    companion object {
        fun create(
            isLoading: Boolean = false,
            throwable: Throwable? = null
        ): ${viewStateName} =
            ${viewStateName}(isLoading, throwable)
    }
}