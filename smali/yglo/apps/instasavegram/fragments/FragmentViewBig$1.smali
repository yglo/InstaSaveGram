.class Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;
.super Ljava/lang/Object;
.source "FragmentViewBig.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentViewBig;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$000(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 130
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$000(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->invalidate()V

    .line 133
    new-instance v0, Landroid/widget/MediaController;

    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    invoke-virtual {v1}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 134
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$000(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 135
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentViewBig$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentViewBig;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentViewBig;->videoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentViewBig;->access$000(Lyglo/apps/instasavegram/fragments/FragmentViewBig;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 136
    return-void
.end method
