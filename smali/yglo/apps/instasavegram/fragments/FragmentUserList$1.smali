.class Lyglo/apps/instasavegram/fragments/FragmentUserList$1;
.super Ljava/lang/Object;
.source "FragmentUserList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentUserList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentUserList;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v1, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentUserList;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/User;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setFragmentViewUserInfoVisible(Ljava/lang/String;)V

    .line 81
    return-void
.end method
