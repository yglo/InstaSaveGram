.class public abstract Lyglo/apps/instasavegram/views/BaseGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseGridAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field protected mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field private saveToCache:Z

.field protected selected:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-boolean p2, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->saveToCache:Z

    .line 40
    iput-object p1, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->context:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {p1}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v0

    iput-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;

    .line 46
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract addData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;)V"
        }
    .end annotation
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 110
    return-void
.end method

.method public deselectAll()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 122
    move v0, v1

    :goto_0
    iget-object v2, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lyglo/apps/instasavegram/model/Media;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getItem(I)Lyglo/apps/instasavegram/model/Media;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 72
    .line 73
    if-nez p2, :cond_0

    .line 74
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->mediaList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    .line 77
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->getImages()Lyglo/apps/instasavegram/model/MediaObjects;

    move-result-object v2

    .line 79
    const v1, 0x7f0e0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    iget-object v5, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pref_grid_size"

    const-string v7, "3"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 82
    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/MediaObjects;->getLowResolution()Lyglo/apps/instasavegram/model/MediaObject;

    move-result-object v2

    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 84
    :goto_0
    iget-object v5, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v5

    iget-boolean v2, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->saveToCache:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 85
    :goto_1
    invoke-virtual {v5, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 88
    const v1, 0x7f0e0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 89
    iget-object v2, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isVideo()Z

    move-result v2

    .line 92
    const v0, 0x7f0e0084

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    if-eqz v2, :cond_5

    const-string v1, "pro"

    const-string v5, "free"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 94
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->typefaceManager:Lyglo/apps/instasavegram/TypefaceManager;

    invoke-virtual {v1, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    .line 98
    :cond_1
    const v0, 0x7f0e0085

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    return-object p2

    .line 82
    :cond_2
    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/MediaObjects;->getThumbnail()Lyglo/apps/instasavegram/model/MediaObject;

    move-result-object v2

    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_3
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    goto :goto_1

    :cond_4
    move v2, v4

    .line 89
    goto :goto_2

    :cond_5
    move v1, v4

    .line 93
    goto :goto_3

    :cond_6
    move v3, v4

    .line 99
    goto :goto_4
.end method

.method public isSelected(I)Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 115
    const-string v1, "pro"

    const-string v2, "free"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getItem(I)Lyglo/apps/instasavegram/model/Media;

    move-result-object v1

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/Media;->isImage()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "pro"

    const-string v2, "pro"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    iget-object v1, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    return-void
.end method

.method public toggleSelected(I)V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    iget-object v0, p0, Lyglo/apps/instasavegram/views/BaseGridAdapter;->selected:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
