.class Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "FragmentSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyglo/apps/instasavegram/fragments/FragmentSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# static fields
.field private static final NUMBER_OF_FRAGMENTS:I = 0x2


# instance fields
.field private registeredFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;


# direct methods
.method public constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;)V
    .locals 2

    .prologue
    .line 128
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    .line 129
    invoke-virtual {p1}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 130
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    .line 131
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 180
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    sget-object v0, Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;->POPULAR:Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;

    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->newInstance(Lyglo/apps/instasavegram/fragments/FragmentListPhotos$RequestType;)Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-static {}, Lyglo/apps/instasavegram/fragments/FragmentUserList;->newInstance()Lyglo/apps/instasavegram/fragments/FragmentUserList;

    move-result-object v0

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 163
    const-string v0, ""

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRegisteredFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 171
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->registeredFragments:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    return-object v0
.end method
