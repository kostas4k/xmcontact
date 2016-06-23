<{if $form}>
<ol class="breadcrumb">
    <li><a href="index.php"><{$smarty.const._MD_XMCONTACT_INDEX_LISTCONTACT}></a></li>
    <li class="active"><{$smarty.const._MD_XMCONTACT_INDEX_FORM}></li>
</ol>
<form  name="save" id="save" action="index.php" onsubmit="return xoopsFormValidate_save();" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="Name"><{$smarty.const._MD_XMCONTACT_INDEX_NAME}></label>
        <input type="text" class="form-control" id="NAME" placeholder="<{$smarty.const._MD_XMCONTACT_INDEX_NAME_PH}>">
    </div>
    <div class="form-group">
        <label for="Email"><{$smarty.const._MD_XMCONTACT_INDEX_EMAIL}></label>
        <input type="email" class="form-control" id="Email" placeholder="<{$smarty.const._MD_XMCONTACT_INDEX_EMAIL_PH}>">
    </div>
    <div class="form-group">
        <label for="Phone"><{$smarty.const._MD_XMCONTACT_INDEX_PHONE}></label>
        <input type="tel" class="form-control" id="Phone" placeholder="<{$smarty.const._MD_XMCONTACT_INDEX_PHONE_PH}>">
    </div>
    <div class="form-group">
        <label for="Subject"><{$smarty.const._MD_XMCONTACT_INDEX_SUBJECT}></label>
        <input type="text" class="form-control" id="Subject" placeholder="<{$smarty.const._MD_XMCONTACT_INDEX_SUBJECT_PH}>">
    </div>
    <div class="form-group">
        <label for="Message"><{$smarty.const._MD_XMCONTACT_INDEX_MESSAGE}></label>
        <textarea class="form-control" id="Message" rows="5" placeholder="<{$smarty.const._MD_XMCONTACT_INDEX_MESSAGE_PH}>"></textarea>
    </div>
    <input type="hidden" name="op" id="op" value="save">
    <input type="hidden" name="cat_id" id="cat_id" value=<{$cat_id}>>
    <button type="submit" class="btn btn-primary"><{$smarty.const._MD_XMCONTACT_INDEX_SUBMIT}></button>
</form>
<{/if}>


<{if $info_header}>
<div class="row">
    <div class="col-sm-12" style="padding-bottom: 10px; padding-top: 5px;">
        <{$info_header}>
    </div>
</div>
<{/if}>

<{if $info_googlemaps && $info_addresse}>
    <div class="row" style="padding-bottom: 5px; padding-top: 5px;">
        <div class="col-md-8 col-sm-12">
            <{$info_googlemaps}>
        </div>
        <div class="col-md-4 col-sm-12">
            <{$info_addresse}>
        </div>
    </div>
<{else}>
    <{if $info_googlemaps}>
        <div class="row" style="padding-bottom: 5px; padding-top: 5px;">
            <div class="col-sm-12">
                <{$info_googlemaps}>
            </div>
        </div>
    <{/if}>
    <{if $info_addresse}>
        <div class="row" style="padding-bottom: 5px; padding-top: 5px;">
            <div class="col-sm-12">
                <{$info_addresse}>
            </div>
        </div>
    <{/if}>
<{/if}>
<{if $category_count != 0}>
    <{foreach item=category from=$category}>
    <{if $info_columncat == 1}>
        <div class="row" style="padding-bottom: 5px; padding-top: 5px;">
            <div class="col-sm-2" style="height: 152px; text-align: center;">
                <img src="<{$category.logo}>" title="<{$category.title}>" class="img-rounded" style="max-height: 150px;">
            </div>
            <div class="col-sm-10">
                <h4><{$category.title}></h4>
                <{$category.description}>
                <p style="padding-top: 15px;">
                    <a href="index.php?op=form&cat_id=<{$category.id}>"><button type="button" class="btn btn-info btn-xs"><{$smarty.const._MD_XMCONTACT_INDEX_CONTACT}></button></a>
                </p>
            </div>
        </div>
    <{/if}>
    <{if $info_columncat == 2}>
        <{if $category.row == true}>
        <div class="row" style="margin-top: 5px;">
        <{/if}>
            <div class="col-md-2 col-sm-12" style="height: 152px; text-align: center;">
                <img src="<{$category.logo}>" title="<{$category.title}>" class="img-rounded" style="max-height: 150px;">
            </div>
            <div class="col-md-4 col-sm-12">
                <h4><{$category.title}></h4>
                <{$category.description}>
                <p style="padding-top: 15px;">
                    <a href="index.php?op=form&cat_id=<{$category.id}>"><button type="button" class="btn btn-info btn-xs"><{$smarty.const._MD_XMCONTACT_INDEX_CONTACT}></button></a>
                </p>
            </div>
        <{if $category.count is div by $info_columncat}>
        </div>
        <{/if}>
    <{/if}>
    <{if $info_columncat == 3}>
        <{if $category.row == true}>
        <div class="row" style="margin-top: 5px;">
        <{/if}>
            <div class="col-md-2 col-sm-12" style="height: 152px; text-align: center;">
                <img src="<{$category.logo}>" title="<{$category.title}>" class="img-rounded" style="max-height: 150px;">
            </div>
            <div class="col-md-2 col-sm-12">
                <h4><{$category.title}></h4>
                <{$category.description}> <{$category.count}>
                <p style="padding-top: 15px;">
                    <a href="index.php?op=form&cat_id=<{$category.id}>"><button type="button" class="btn btn-info btn-xs"><{$smarty.const._MD_XMCONTACT_INDEX_CONTACT}></button></a>
                </p>
            </div>
        <{if $category.count is div by $info_columncat}>
        </div>
        <{/if}>
    <{/if}>
    <{/foreach}>
<{/if}>

<{if $info_footer}>
    <div class="row" style="padding-bottom: 5px; padding-top: 5px;">
        <div class="col-sm-12">
            <{$info_footer}>
        </div>
    </div>
<{/if}>