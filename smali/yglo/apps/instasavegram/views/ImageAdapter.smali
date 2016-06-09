.class public Lyglo/apps/instasavegram/views/ImageAdapter;
.super Lyglo/apps/instasavegram/views/BaseGridAdapter;
.source "ImageAdapter.java"


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lyglo/apps/instasavegram/views/BaseGridAdapter;-><init>(Lyglo/apps/instasavegram/InstaSaveApplication;Z)V

    .line 13
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lyglo/apps/instasavegram/model/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    .line 20
    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    iget-object v2, p0, Lyglo/apps/instasavegram/views/ImageAdapter;->mediaList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lyglo/apps/instasavegram/views/ImageAdapter;->selected:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/ImageAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
