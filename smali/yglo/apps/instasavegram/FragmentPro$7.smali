.class Lyglo/apps/instasavegram/FragmentPro$7;
.super Ljava/lang/Object;
.source "FragmentPro.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/FragmentPro;->createZipConfirmationDialog()V
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
    .line 289
    iput-object p1, p0, Lyglo/apps/instasavegram/FragmentPro$7;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Lyglo/apps/instasavegram/ZipTask;

    iget-object v1, p0, Lyglo/apps/instasavegram/FragmentPro$7;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/FragmentPro;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lyglo/apps/instasavegram/FragmentPro$7;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    # getter for: Lyglo/apps/instasavegram/FragmentPro;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;
    invoke-static {v2}, Lyglo/apps/instasavegram/FragmentPro;->access$400(Lyglo/apps/instasavegram/FragmentPro;)Lyglo/apps/instasavegram/InstaSaveApplication;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lyglo/apps/instasavegram/ZipTask;-><init>(Landroid/app/Activity;Lyglo/apps/instasavegram/InstaSaveApplication;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/ZipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method
