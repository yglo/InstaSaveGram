.class Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;
.super Ljava/lang/Object;
.source "FragmentListPhotos.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "pro"

    const-string v1, "free"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0, p3}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getItem(I)Lyglo/apps/instasavegram/model/Media;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v1, v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->access$100(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setFragmentViewPhotoVisible(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0, p3}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->getItem(I)Lyglo/apps/instasavegram/model/Media;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v1, v1, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestType:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;
    invoke-static {v2}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->access$100(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setFragmentViewPhotoVisible(Lyglo/apps/instasavegram/model/Media;Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)V

    goto :goto_0
.end method
