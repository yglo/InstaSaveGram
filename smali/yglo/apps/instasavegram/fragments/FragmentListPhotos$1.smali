.class Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;
.super Ljava/lang/Object;
.source "FragmentListPhotos.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    const/4 v3, 0x0

    .line 145
    const-string v0, "pro"

    const-string v1, "free"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/model/Media;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    sget-object v1, Lyglo/apps/instasavegram/BaseActivity$FragmentType;->PRO:Lyglo/apps/instasavegram/BaseActivity$FragmentType;

    invoke-interface {v0, v1}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->setActiveFragment(Lyglo/apps/instasavegram/BaseActivity$FragmentType;)V

    .line 155
    :goto_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->instaSaveApplication:Lyglo/apps/instasavegram/InstaSaveApplication;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/InstaSaveApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    const-string v1, "startUps"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 158
    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 160
    const-string v1, "longTouchHelpShown"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 161
    if-nez v1, :cond_0

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "longTouchHelpShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->activityInterface:Lyglo/apps/instasavegram/fragments/ActivityInterface;

    invoke-interface {v0}, Lyglo/apps/instasavegram/fragments/ActivityInterface;->createLongTouchHelpDialog()V

    .line 167
    :cond_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    iget-object v0, v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->adapter:Lyglo/apps/instasavegram/views/BaseGridAdapter;

    invoke-virtual {v0, p3}, Lyglo/apps/instasavegram/views/BaseGridAdapter;->toggleSelected(I)V

    .line 152
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    # invokes: Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->updateView(I)V
    invoke-static {v0, p3}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->access$000(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;I)V

    goto :goto_0
.end method
