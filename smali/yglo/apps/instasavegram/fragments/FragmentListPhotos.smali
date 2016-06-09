.class public Lyglo/apps/instasavegram/fragments/FragmentListPhotos;
.super Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.source "FragmentListPhotos.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyglo/apps/instasavegram/fragments/RestRequestFragment",
        "<",
        "Ljava/util/List",
        "<",
        "Lyglo/apps/instasavegram/model/Media;",
        ">;>;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;"
    }
.end annotation


# static fields
.field public static final REQUEST_TYPE_ARG:Ljava/lang/String; = "requestType"

.field private static final USER_ID_ARG:Ljava/lang/String; = "userId"


# instance fields
.field protected adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

.field private appendNextResponse:Z

.field private footer:Landroid/widget/TextView;

.field protected gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

.field handler:Landroid/os/Handler;

.field private paginationNext:Ljava/lang/String;

.field private requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateView(I)V

    return-void
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    return-object v0
.end method

.method private doRequest(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 290
    iput-boolean v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->isRequestingData:Z

    .line 292
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateFooter()V

    .line 294
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->SEARCH:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, p5, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->searchMedia(Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->MORE:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v4, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    if-nez p4, :cond_2

    move v0, v2

    :goto_1
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->paginationNext:Ljava/lang/String;

    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v1, v4, v0, v2, v3}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getMoreMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    .line 298
    :cond_3
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    if-nez p4, :cond_4

    :goto_2
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2, p3, v3}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getLikedMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 300
    :cond_5
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    if-nez p4, :cond_6

    :goto_3
    iget-object v5, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getOwnMedia(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_3

    .line 302
    :cond_7
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 303
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getPopularMedia(Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto :goto_0

    .line 304
    :cond_8
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->FEED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 305
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    if-nez p4, :cond_9

    :goto_4
    iget-object v5, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getFeed(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto :goto_0

    :cond_9
    move v2, v3

    goto :goto_4

    .line 306
    :cond_a
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->accessToken:Ljava/lang/String;

    if-nez p4, :cond_b

    :goto_5
    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->userId:Ljava/lang/String;

    iget-object v6, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getUserRecentMedia(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestId:I

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_5
.end method

.method public static newInstance(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v2, "requestType"

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v2, "requestType"

    sget-object v3, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v3}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v2, "userId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->doRequest(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 263
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    .line 408
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 409
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 411
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->isSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getItem(I)Lyglo/apps/instasavegram/model/Media;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070060

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 427
    :cond_2
    :goto_1
    return-void

    .line 417
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;

    invoke-direct {v3, p0, v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$4;-><init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->createSaveDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method private setupCorrectAdapter(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 204
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v4, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v0, v4}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v4, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v0, v4}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 206
    :goto_0
    iget-object v4, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_filter"

    aget-object v6, v3, v2

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 208
    new-instance v1, Lyglo/apps/instasavegram/views/AllAdapter;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-direct {v1, v2, v0}, Lyglo/apps/instasavegram/views/AllAdapter;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V

    iput-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    .line 215
    :cond_1
    :goto_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/views/EndlessGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    return-void

    :cond_2
    move v0, v2

    .line 204
    goto :goto_0

    .line 209
    :cond_3
    aget-object v1, v3, v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    new-instance v1, Lyglo/apps/instasavegram/views/ImageAdapter;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-direct {v1, v2, v0}, Lyglo/apps/instasavegram/views/ImageAdapter;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V

    iput-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    goto :goto_1

    .line 212
    :cond_4
    new-instance v1, Lyglo/apps/instasavegram/views/VideoAdapter;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-direct {v1, v2, v0}, Lyglo/apps/instasavegram/views/VideoAdapter;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V

    iput-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    goto :goto_1
.end method

.method private setupCorrectGridSize()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_grid_size"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->setNumColumns(I)V

    .line 222
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->invalidate()V

    .line 223
    return-void
.end method

.method private updateFooter()V
    .locals 3

    .prologue
    .line 361
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->isRequestingData:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v2, 0x7f070051

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateView(I)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 378
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/views/EndlessGridView;->getLastVisiblePosition()I

    move-result v1

    .line 380
    if-gt p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    .line 382
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v1, p1}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->isSelected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    :cond_0
    return-void

    .line 386
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private updateVisibleViews()V
    .locals 5

    .prologue
    .line 392
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getFirstVisiblePosition()I

    move-result v3

    .line 393
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getLastVisiblePosition()I

    move-result v4

    move v2, v3

    .line 396
    :goto_0
    if-gt v2, v4, :cond_2

    .line 398
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    sub-int v1, v2, v3

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/views/EndlessGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 400
    const v1, 0x7f0e0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v1, v2}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->isSelected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 402
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 404
    :cond_2
    return-void
.end method


# virtual methods
.method protected doOnStartRequest()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-super {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doOnStartRequest()V

    .line 278
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->doRequest(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 279
    return-void
.end method

.method public doSearchRequest(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doSearchRequest(Ljava/lang/String;)V

    .line 285
    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->SEARCH:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->doRequest(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 286
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FragmentListPhotos_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDataEmpty()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onAttach(Landroid/app/Activity;)V

    .line 109
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    .line 90
    if-eqz p1, :cond_1

    .line 92
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->values()[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v0

    const-string v1, "requestType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 93
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->userId:Ljava/lang/String;

    .line 102
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setHasOptionsMenu(Z)V

    .line 103
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->values()[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v0

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 98
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1, p2}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 229
    const v0, 0x7f0f0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 230
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    const v0, 0x7f03001b

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 134
    const v0, 0x7f0e0060

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/views/EndlessGridView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    .line 135
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v0, p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->setFragment(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V

    .line 137
    invoke-direct {p0, v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setupCorrectAdapter(Z)V

    .line 138
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setupCorrectGridSize()V

    .line 140
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/views/EndlessGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;-><init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/views/EndlessGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 192
    const v0, 0x7f0e0061

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v0

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->footer:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    .line 195
    return-object v1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onDetach()V

    .line 116
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 117
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 256
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 238
    :pswitch_0
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selectAll()V

    .line 239
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateVisibleViews()V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->deselectAll()V

    .line 244
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateVisibleViews()V

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->save()V

    goto :goto_0

    .line 252
    :pswitch_3
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->refresh()V

    goto :goto_0

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e009a
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 122
    const-string v0, "requestType"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "userId"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 432
    const-string v0, "pref_filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setupCorrectAdapter(Z)V

    .line 435
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->addData(Ljava/util/List;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    const-string v0, "pref_grid_size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->setupCorrectGridSize()V

    goto :goto_0
.end method

.method public requestMoreData()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->isRequestingData:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->paginationNext:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->appendNextResponse:Z

    .line 270
    sget-object v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->MORE:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->doRequest(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->treatRequestExeptions(Lyglo/apps/instasavegram/rest/service/RestServiceError;Z)V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->appendNextResponse:Z

    .line 356
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateFooter()V

    .line 357
    return-void
.end method

.method protected responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->appendNextResponse:Z

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->clearData()V

    .line 325
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 326
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->addData(Ljava/util/List;)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->appendNextResponse:Z

    .line 329
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateFooter()V

    .line 331
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getPagination()Lyglo/apps/instasavegram/model/Pagination;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getPagination()Lyglo/apps/instasavegram/model/Pagination;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Pagination;->getNextUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->paginationNext:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->gridView:Lyglo/apps/instasavegram/views/EndlessGridView;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/views/EndlessGridView;->getMaxItemsOnScreen()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 337
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->handler:Landroid/os/Handler;

    new-instance v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$3;

    invoke-direct {v1, p0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$3;-><init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->paginationNext:Ljava/lang/String;

    goto :goto_0
.end method
