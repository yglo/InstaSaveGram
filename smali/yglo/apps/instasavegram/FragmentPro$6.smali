.class Lyglo/apps/instasavegram/FragmentPro$6;
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
    .line 280
    iput-object p1, p0, Lyglo/apps/instasavegram/FragmentPro$6;->this$0:Lyglo/apps/instasavegram/FragmentPro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 285
    return-void
.end method
