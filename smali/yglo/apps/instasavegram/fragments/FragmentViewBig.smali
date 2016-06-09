.class public Lyglo/apps/instasavegram/fragments/FragmentViewBig;
.super Lyglo/apps/instasavegram/fragments/BaseFragment;
.source "FragmentViewBig.java"


# static fields
.field private static final MEDIA_ARG:Ljava/lang/String; = "media"

.field private static final REQUEST_TYPE_ARG:Ljava/lang/String; = "requestType"


# instance fields
.field private isVideo:Z

.field private media:Lyglo/apps/instasavegram/model/Media;

.field private photoView:Landroid/widget/ImageView;

.field private requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Lyglo/apps/instasavegram/model/Media;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    return-object v0
.end method

.method static synthetic access$200(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    return-object v0
.end method

.method public static newInstance(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentViewBig;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "media"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 46
    const-string v2, "requestType"

    invoke-virtual {p1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method

.method private save()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    const/4 v1, 0x1

    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig$2;-><init>(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)V

    invoke-interface {v0, v1, v2}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->createSaveDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "FragmentViewBig"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->isVideo:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getVideos()Lyglo/apps/instasavegram/model/MediaObjects;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/MediaObjects;->getStandardResolution()Lyglo/apps/instasavegram/model/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 122
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 124
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;

    invoke-direct {v1, p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 139
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/Media;->getImages()Lyglo/apps/instasavegram/model/MediaObjects;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/MediaObjects;->getStandardResolution()Lyglo/apps/instasavegram/model/MediaObject;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 144
    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    sget-object v2, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->CUSTOM_USER:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v0, v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->photoView:Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 144
    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->values()[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v0

    const-string v1, "requestType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 65
    const-string v0, "media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isVideo()Z

    move-result v0

    iput-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->isVideo:Z

    .line 75
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getUser()Lyglo/apps/instasavegram/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;->newInstance(Ljava/lang/String;Z)Lyglo/apps/instasavegram/fragments/FragmentUserInfoHeader;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 78
    const v2, 0x7f0e0077

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 81
    invoke-virtual {p0, v3}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->setHasOptionsMenu(Z)V

    .line 82
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->values()[Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v0

    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "requestType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    .line 70
    invoke-virtual {p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 153
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 154
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-boolean v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->isVideo:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030024

    .line 97
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 99
    const v0, 0x7f0e007f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->photoView:Landroid/widget/ImageView;

    .line 100
    const v0, 0x7f0e0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;

    .line 102
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getCaption()Lyglo/apps/instasavegram/model/Caption;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 105
    const v0, 0x7f0e0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/Caption;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    .line 109
    :cond_0
    return-object v1

    .line 95
    :cond_1
    const v0, 0x7f030023

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 162
    :pswitch_0
    invoke-direct {p0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->save()V

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e009a
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 87
    const-string v0, "requestType"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "media"

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->media:Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    invoke-super {p0, p1}, Lyglo/apps/instasavegram/fragments/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method
