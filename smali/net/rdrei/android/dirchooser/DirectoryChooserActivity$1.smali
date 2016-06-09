.class Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;
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
    .line 87
    iput-object p1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    iget-object v1, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    # getter for: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->mSelectedDir:Ljava/io/File;
    invoke-static {v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$000(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)Ljava/io/File;

    move-result-object v1

    # invokes: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->isValidFile(Ljava/io/File;)Z
    invoke-static {v0, v1}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$100(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity$1;->this$0:Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;

    # invokes: Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->returnSelectedFolder()V
    invoke-static {v0}, Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;->access$200(Lnet/rdrei/android/dirchooser/DirectoryChooserActivity;)V

    .line 96
    :cond_0
    return-void
.end method
