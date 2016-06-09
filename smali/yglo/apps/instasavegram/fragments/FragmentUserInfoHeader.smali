.class public Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;
.super Lyglo/apps/instasavegram/fragments/RestRequestFragment;
.source "FragmentUserInfoHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyglo/apps/instasavegram/fragments/RestRequestFragment",
        "<",
        "Lyglo/apps/instasavegram/model/User;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_CLICKABLE_ARG:Ljava/lang/String; = "isClickable"

.field private static final USER_ID_ARG:Ljava/lang/String; = "userId"


# instance fields
.field private imageViewProfilePicture:Landroid/widget/ImageView;

.field private isClickable:Z

.field private textViewBio:Landroid/widget/TextView;

.field private textViewFullname:Landroid/widget/TextView;

.field private textViewUsername:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v2, "userId"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "isClickable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->isDataEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewUsername:Landroid/widget/TextView;

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    check-cast v0, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewFullname:Landroid/widget/TextView;

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    check-cast v0, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewBio:Landroid/widget/TextView;

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    check-cast v0, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getBio()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    check-cast v0, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getProfilePicture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->imageViewProfilePicture:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method protected doOnStartRequest()V
    .locals 5

    .prologue
    .line 116
    invoke-super {p0}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doOnStartRequest()V

    .line 117
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->restServiceHelper:Lyglo/apps/instasavegram/rest/service/RestServiceHelper;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->accessToken:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;

    iget-object v4, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->restServiceHelperCallback:Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lyglo/apps/instasavegram/rest/service/RestServiceHelper;->getUserInfo(Ljava/lang/String;ZLjava/lang/String;Lyglo/apps/instasavegram/rest/service/RestServiceHelper$RestServiceHelperCallback;)I

    move-result v0

    iput v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->requestId:I

    .line 118
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isDataEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    if-eqz p1, :cond_1

    .line 55
    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;

    .line 56
    const-string v0, "isClickable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->isClickable:Z

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isClickable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->isClickable:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v3, 0x7f0e005f

    .line 76
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    const v0, 0x7f0e0079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewUsername:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0e007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewFullname:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0e007c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->textViewBio:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0e007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->imageViewProfilePicture:Landroid/widget/ImageView;

    .line 83
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->isClickable:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 85
    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/view/ViewGroup;)V

    .line 95
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->updateViews()V

    .line 97
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    const-string v0, "userId"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "isClickable"

    iget-boolean v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->isClickable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public responseFailure(Lyglo/apps/instasavegram/rest/service/RestServiceError;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->treatRequestExeptions(Lyglo/apps/instasavegram/rest/service/RestServiceError;Z)V

    .line 137
    return-void
.end method

.method public responseSuccess(Lyglo/apps/instasavegram/model/IGResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyglo/apps/instasavegram/model/IGResponse",
            "<",
            "Lyglo/apps/instasavegram/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p1}, Lyglo/apps/instasavegram/model/IGResponse;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->data:Ljava/lang/Object;

    .line 130
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->updateViews()V

    .line 131
    return-void
.end method
