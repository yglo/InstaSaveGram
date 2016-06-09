.class public Lyglo/apps/instasavegram/views/EndlessGridView;
.super Landroid/widget/GridView;
.source "EndlessGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private fragment:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

.field private maxItemsOnScreen:I

.field private numCols:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0, p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0, p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getMaxItemsOnScreen()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->maxItemsOnScreen:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    .line 47
    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->numCols:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 48
    iget v1, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->numCols:I

    mul-int/2addr v0, v1

    iput v0, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->maxItemsOnScreen:I

    .line 49
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/EndlessGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    add-int v0, p3, p2

    .line 63
    add-int/lit8 v1, p4, -0x5

    if-lt v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->fragment:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    invoke-virtual {v0}, Lyglo/apps/instasavegram/fragments/FragmentListPhotos;->requestMoreData()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setFragment(Lyglo/apps/instasavegram/fragments/FragmentListPhotos;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->fragment:Lyglo/apps/instasavegram/fragments/FragmentListPhotos;

    .line 54
    return-void
.end method

.method public setNumColumns(I)V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 39
    iput p1, p0, Lyglo/apps/instasavegram/views/EndlessGridView;->numCols:I

    .line 40
    return-void
.end method
