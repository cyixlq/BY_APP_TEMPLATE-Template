package ${kotlinEscapedPackageName}

import android.os.Bundle
import android.view.View
import androidx.lifecycle.ViewModelProviders
<#if applicationPackage??>
import top.cyixlq.common.base.fragment.BaseFragment
import ${applicationPackage}.R
</#if>

class ${className} : BaseFragment() {

    private val mViewModel = ViewModelProviders.of(this, ${viewModelClass}Factory(${dataSourceRepositoryName}())).get(${viewModelClass}::class.java)

    override val layoutId: Int = R.layout.${fragment_layout}

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        binds()
    }

    private fun binds() {
    }

    companion object {
        fun instance(): ${className} = ${className}()
    }
}