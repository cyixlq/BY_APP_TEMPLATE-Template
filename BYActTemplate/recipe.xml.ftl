<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
           
    <instantiate from="root/res/layout/activity.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/${activity_layout}.xml" />

    <instantiate from="root/src/app_package/BasicActivity.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate from="root/src/app_package/BasicActivityViewModel.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelClass}.kt" />
                 
<#if generateDataSource>
    <instantiate from="root/src/app_package/BasicRepository.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}Repository.kt" />
</#if>

<#if generateViewState>
     <instantiate from="root/src/app_package/BasicViewState.${ktOrJavaExt}.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${extractLetters(objectKind)}ViewState.kt" />
</#if>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.${ktOrJavaExt}" />
</recipe>
