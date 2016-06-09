.class Lyglo/apps/instasavegram/FragmentPro$3;
.super Ljava/lang/Object;
.source "FragmentPro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/FragmentPro;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/FragmentPro;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/FragmentPro;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lyglo/apps/instasavegram/FragmentPro$3;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro$3;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    # invokes: Lyglo/apps/instasavegram/FragmentPro;->createConfirmationDialog()V
    invoke-static {v0}, Lyglo/apps/instasavegram/FragmentPro;->access$100(Lyglo/apps/instasavegram/FragmentPro;)V

    .line 106
    return-void
.end method
