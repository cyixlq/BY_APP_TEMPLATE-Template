package ${kotlinEscapedPackageName}

import android.os.Bundle
import android.view.View
import androidx.lifecycle.ViewModelProviders
<#if applicationPackage??>
import top.cyixlq.core.common.fragment.CommonFragment
import ${applicationPackage}.R
</#if>

class ${className} : CommonFragment() {

    private val mViewModel by lazy {
        ViewModelProviders.of(this, ${viewModelClass}Factory(${dataSourceRepositoryName}())).get(${viewModelClass}::class.java)
    }

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