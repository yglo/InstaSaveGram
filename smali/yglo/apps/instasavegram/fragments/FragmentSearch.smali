.class public Lyglo/apps/instasavegram/fragments/FragmentSearch;
.super Landroid/support/v4/app/Fragment;
.source "FragmentSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;
    }
.end annotation


# instance fields
.field private pager:Landroid/support/v4/view/ViewPager;

.field private searchQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lyglo/apps/instasavegram/fragments/FragmentSearch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public static newInstance()Lyglo/apps/instasavegram/fragments/FragmentSearch;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lyglo/apps/instasavegram/fragments/FragmentSearch;

    invoke-direct {v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->setHasOptionsMenu(Z)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 64
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 66
    const v0, 0x7f0e009e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 68
    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;

    invoke-direct {v2, p0, v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;-><init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 105
    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;

    invoke-direct {v2, p0, v1, v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;-><init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 46
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 48
    new-instance v2, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;

    invoke-direct {v2, p0}, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;-><init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;)V

    .line 50
    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;

    .line 51
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 53
    const v0, 0x7f0e0075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip;

    .line 54
    iget-object v2, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 56
    return-object v1
.end method
