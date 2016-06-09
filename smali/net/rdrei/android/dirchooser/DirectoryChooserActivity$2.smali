.class Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;
.super Ljava/lang/Object;
.source "DirectoryChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;


# direct methods
.method constructor <init>(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->setResult(I)V

    .line 106
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$2;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-virtual {v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->finish()V

    .line 107
    return-void
.end method
