package ${kotlinEscapedPackageName}

import android.os.Bundle
import androidx.fragment.app.FragmentActivity
import android.content.Intent
import androidx.lifecycle.ViewModelProviders
<#if applicationPackage??>
import ${applicationPackage}.R
import top.cyixlq.common.base.activity.BaseActivity
</#if>

class ${className} : BaseActivity() {

    private val mViewModel = ViewModelProviders.of(this, ${viewModelClass}Factory(${dataSourceRepositoryName}())).get(${viewModelClass}::class.java)

    override val layoutId: Int = R.layout.${activity_layout}

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binds()
    }

    private fun binds() {
        // TODO implement detail
    }

    companion object {
        fun launch(activity: FragmentActivity) {
            activity.startActivity(Intent(activity, ${className}::class.java))
        }
    }
}
