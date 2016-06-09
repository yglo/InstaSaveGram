.class Lyglo/apps/instasavegram/fragments/FragmentSearch$2;
.super Ljava/lang/Object;
.source "FragmentSearch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

.field final synthetic val$searchItem:Landroid/view/MenuItem;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Lyglo/apps/instasavegram/fragments/FragmentSearch;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    iput-object p2, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->val$searchItem:Landroid/view/MenuItem;

    iput-object p3, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 110
    if-nez p2, :cond_1

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->val$searchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 115
    :cond_0
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->val$searchView:Landroid/support/v7/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 116
    iget-object v0, p0, Lyglo/apps/instasavegram/fragments/FragmentSearch$2;->this$0:Lyglo/apps/instasavegram/fragments/FragmentSearch;

    const-string v1, ""

    # setter for: Lyglo/apps/instasavegram/fragments/FragmentSearch;->searchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lyglo/apps/instasavegram/fragments/FragmentSearch;->access$002(Lyglo/apps/instasavegram/fragments/FragmentSearch;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method
