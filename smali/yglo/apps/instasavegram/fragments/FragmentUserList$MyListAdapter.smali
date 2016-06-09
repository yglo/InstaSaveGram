.class Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FragmentUserList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/FragmentUserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentUserList;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 168
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 169
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 170
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 199
    .line 200
    if-nez p2, :cond_0

    .line 201
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 203
    :cond_0
    const v0, 0x7f0e0087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 204
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v1, v1, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const v1, 0x7f0e0088

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v2, v2, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/model/User;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v2, v2, Lyglo/apps/instasavegram/fragments/FragmentUserList;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v2}, Lyglo/apps/instasavegram/InstaSaveApplication;->getTypefaceManager()Lyglo/apps/instasavegram/TypefaceManager;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v0}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    .line 211
    invoke-virtual {v2, v1}, Lyglo/apps/instasavegram/TypefaceManager;->setTypeface(Landroid/widget/TextView;)V

    .line 213
    const v0, 0x7f0e0086

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$MyListAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v1, v1, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/model/User;->getProfilePicture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 216
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 219
    return-object p2
.end method
