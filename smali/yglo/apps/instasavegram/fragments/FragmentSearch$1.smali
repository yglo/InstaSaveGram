.class Lyglo/apps/instasavegram/fragments/FragmentSearch$1;
.super Ljava/lang/Object;
.source "FragmentSearch.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyglo/apps/instasavegram/fragments/FragmentSearch;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    iput-object p2, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 73
    const-string v0, "^\\w*$"

    .line 75
    const-string v0, "^\\w*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$002(Lyglo/apps/instasavegram/fragments/FragmentSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$000(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$100(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;

    .line 88
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$100(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentSearch$MyPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lyglo/apps/instasavegram/fragments/RestRequestFragment;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    # getter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;
    invoke-static {v1}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$000(Lyglo/apps/instasavegram/fragments/FragmentSearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyglo/apps/instasavegram/fragments/RestRequestFragment;->doSearchRequest(Ljava/lang/String;)V

    .line 93
    :cond_1
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$1;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 95
    const/4 v0, 0x1

    return v0
.end method
