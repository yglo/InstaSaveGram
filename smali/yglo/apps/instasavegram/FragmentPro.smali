.class public Lyglo/apps/instasavegram/FragmentPro;
.super Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.source "FragmentPro.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyglo/apps/instasavegram/fragments/RestRequestFragment",
        "<",
        "Ljava/util/List",
        "<",
        "Lyglo/apps/instasavegram/model/Media;",
        ">;>;"
    }
.end annotation


# instance fields
.field private currentRequest:Lyglo/apps/instasavegram/FullBackupSettings$Type;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private settings:Lyglo/apps/instasavegram/FullBackupSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/FragmentPro;)Lyglo/apps/instasavegram/FullBackupSettings;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    return-object v0
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/FragmentPro;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->createConfirmationDialog()V

    return-void
.end method

.method static synthetic access$200(Lyglo/apps/instasavegram/FragmentPro;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->createZipConfirmationDialog()V

    return-void
.end method

.method static synthetic access$300(Lyglo/apps/instasavegram/FragmentPro;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->startBackup()V

    return-void
.end method

.method static synthetic access$400(Lyglo/apps/instasavegram/FragmentPro;)Lyglo/apps/instasavegram/InstaSaveApplication;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    return-object v0
.end method

.method private continueRequest(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->accessToken:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2, p1, v3}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getMoreMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    .line 165
    return-void
.end method

.method private createConfirmationDialog()V
    .locals 6

    .prologue
    .line 251
    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 255
    const v2, 0x7f070074

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070037

    invoke-virtual {p0, v3}, Lyglo/apps/instasavegram/FragmentPro;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    const v1, 0x7f070050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v1, 0x7f070068

    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$5;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$5;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 269
    :cond_0
    return-void
.end method

.method private createZipConfirmationDialog()V
    .locals 6

    .prologue
    .line 273
    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 277
    const v2, 0x7f070074

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070069

    invoke-virtual {p0, v3}, Lyglo/apps/instasavegram/FragmentPro;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 279
    const v1, 0x7f070050

    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$6;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$6;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v1, 0x7f070068

    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$7;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$7;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 299
    :cond_0
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 241
    :try_start_0
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static newInstance()Lyglo/apps/instasavegram/FragmentPro;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lyglo/apps/instasavegram/FragmentPro;

    invoke-direct {v0}, Lyglo/apps/instasavegram/FragmentPro;-><init>()V

    return-object v0
.end method

.method private saveFilteredData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    .line 215
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v1, v1, Lyglo/apps/instasavegram/FullBackupSettings;->contentFilter:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    sget-object v3, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->PHOTOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v1, v1, Lyglo/apps/instasavegram/FullBackupSettings;->contentFilter:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    sget-object v3, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->VIDEOS_ONLY:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v1, v1, Lyglo/apps/instasavegram/FullBackupSettings;->contentFilter:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    sget-object v3, Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;->DISABLE:Lyglo/apps/instasavegram/FullBackupSettings$ContentFilter;

    if-ne v1, v3, :cond_0

    .line 220
    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_3
    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lyglo/apps/instasavegram/FragmentPro;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    .line 228
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 229
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070046

    invoke-virtual {p0, v1}, Lyglo/apps/instasavegram/FragmentPro;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 231
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 232
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 233
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 235
    :cond_0
    return-void
.end method

.method private startBackup()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v0, v0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v0, v0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_0
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/FragmentPro;->startRequest(Lyglo/apps/instasavegram/FullBackupSettings$Type;)V

    .line 143
    :cond_1
    :goto_0
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->showProgressDialog()V

    .line 144
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v0, v0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/FragmentPro;->startRequest(Lyglo/apps/instasavegram/FullBackupSettings$Type;)V

    goto :goto_0
.end method

.method private startRequest(Lyglo/apps/instasavegram/FullBackupSettings$Type;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 150
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->accessToken:Ljava/lang/String;

    iget-object v5, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getOwnMedia(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    .line 153
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    iput-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->currentRequest:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {p1, v0}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro;->accessToken:Ljava/lang/String;

    iget-object v4, p0, Lyglo/apps/instasavegram/FragmentPro;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getLikedMedia(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    .line 158
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    iput-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->currentRequest:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    goto :goto_0
.end method


# virtual methods
.method protected doOnStartRequest()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "FragmentPro"

    return-object v0
.end method

.method protected isDataEmpty()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Lyglo/apps/instasavegram/FullBackupSettings;

    invoke-direct {v0}, Lyglo/apps/instasavegram/FullBackupSettings;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f030033

    const v4, 0x7f030032

    .line 53
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    const v0, 0x7f0e006f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 56
    iget-object v2, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const/high16 v3, 0x7f080000

    invoke-static {v2, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 60
    iget-object v3, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v3}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$1;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$1;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 77
    const v0, 0x7f0e0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 78
    iget-object v2, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    const v3, 0x7f080002

    invoke-static {v2, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 82
    iget-object v3, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v3}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 85
    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$2;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$2;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 99
    const v0, 0x7f0e006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 100
    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$3;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$3;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0e006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 110
    new-instance v2, Lyglo/apps/instasavegram/FragmentPro$4;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/FragmentPro$4;-><init>(Lyglo/apps/instasavegram/FragmentPro;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    const v0, 0x7f0e0052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 121
    return-object v1
.end method

.method protected responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lyglo/apps/instasavegram/FragmentPro;->treatRequestExeptions(Lyglo/apps/instasavegram/rest/service/RestServiceError;Z)V

    .line 209
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->hideProgressDialog()V

    .line 210
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
    .line 182
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getPagination()Lyglo/apps/instasavegram/model/Pagination;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Pagination;->getNextUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 188
    :goto_0
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/FragmentPro;->saveFilteredData(Ljava/util/List;)V

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-direct {p0, v1}, Lyglo/apps/instasavegram/FragmentPro;->continueRequest(Ljava/lang/String;)V

    .line 202
    :goto_1
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->currentRequest:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->OWN:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-object v1, v0

    .line 195
    :goto_2
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getSaveServiceHelper()Lyglo/apps/instasavegram/save/SaveServiceHelper;

    move-result-object v2

    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lyglo/apps/instasavegram/save/SaveServiceHelper;->saveMediaList(Ljava/util/List;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    .line 197
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;

    iget-object v0, v0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN_AND_LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro;->currentRequest:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    sget-object v1, Lyglo/apps/instasavegram/FullBackupSettings$Type;->OWN:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    sget-object v0, Lyglo/apps/instasavegram/FullBackupSettings$Type;->LIKES:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    invoke-direct {p0, v0}, Lyglo/apps/instasavegram/FragmentPro;->startRequest(Lyglo/apps/instasavegram/FullBackupSettings$Type;)V

    goto :goto_1

    .line 194
    :cond_2
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->LIKED:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-object v1, v0

    goto :goto_2

    .line 200
    :cond_3
    invoke-direct {p0}, Lyglo/apps/instasavegram/FragmentPro;->hideProgressDialog()V

    goto :goto_1
.end method
