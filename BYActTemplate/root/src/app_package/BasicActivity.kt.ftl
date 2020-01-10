package ${kotlinEscapedPackageName}

import android.os.Bundle
import androidx.fragment.app.FragmentActivity
import android.content.Intent
import androidx.lifecycle.ViewModelProviders
<#if applicationPackage??>
import ${applicationPackage}.R
import top.cyixlq.core.common.activity.CommonActivity
</#if>

class ${className} : CommonActivity() {

    private val mViewModel by lazy {
        ViewModelProviders.of(this, ${viewModelClass}Factory(${dataSourceRepositoryName}())).get(${viewModelClass}::class.java)
    }

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
