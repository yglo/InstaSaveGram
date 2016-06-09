.class Lyglo/apps/instasavegram/fragments/FragmentUserList$2;
.super Ljava/lang/Object;
.source "FragmentUserList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 86
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentUserList$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentUserList;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentUserList;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->access$000(Lyglo/apps/instasavegram/fragments/FragmentUserList;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 92
    return-void
.end method
