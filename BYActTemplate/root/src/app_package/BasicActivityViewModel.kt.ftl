package ${kotlinEscapedPackageName}

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import top.cyixlq.common.base.viewmodel.BaseViewModel

@SuppressWarnings("checkResult")
class ${viewModelClass}(private val repo: ${dataSourceRepositoryName}) : BaseViewModel() 

@Suppress("UNCHECKED_CAST")
class ${viewModelClass}Factory(private val repo: ${dataSourceRepositoryName}) : ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        return ${viewModelClass}(repo) as T
    }
}