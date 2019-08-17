package ${kotlinEscapedPackageName}

data class ${viewStateName}(
    val isLoading: Boolean = false
) {
    companion object {
        fun create(
            isLoading: Boolean = false
        ): ${viewStateName} =
            ${viewStateName}(isLoading)
    }
}