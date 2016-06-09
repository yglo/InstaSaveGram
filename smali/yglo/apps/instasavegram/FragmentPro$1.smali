.class Lyglo/apps/instasavegram/FragmentPro$1;
.super Ljava/lang/Object;
.source "FragmentPro.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 64
    iput-object p1, p0, Lyglo/apps/instasavegram/FragmentPro$1;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 68
    iget-object v0, p0, Lyglo/apps/instasavegram/FragmentPro$1;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    # getter for: Lyglo/apps/instasavegram/FragmentPro;->settings:Lyglo/apps/instasavegram/FullBackupSettings;
    invoke-static {v0}, Lyglo/apps/instasavegram/FragmentPro;->access$000(Lyglo/apps/instasavegram/FragmentPro;)Lyglo/apps/instasavegram/FullBackupSettings;

    move-result-object v0

    invoke-static {}, Lyglo/apps/instasavegram/FullBackupSettings$Type;->values()[Lyglo/apps/instasavegram/FullBackupSettings$Type;

    move-result-object v1

    aget-object v1, v1, p3

    iput-object v1, v0, Lyglo/apps/instasavegram/FullBackupSettings;->type:Lyglo/apps/instasavegram/FullBackupSettings$Type;

    .line 69
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method
