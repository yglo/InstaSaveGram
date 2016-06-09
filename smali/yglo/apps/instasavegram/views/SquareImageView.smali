.class public Lyglo/apps/instasavegram/views/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lyglo/apps/instasavegram/views/SquareImageView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lyglo/apps/instasavegram/views/SquareImageView;->getDefaultSize(II)I

    move-result v0

    .line 28
    invoke-virtual {p0, v0, v0}, Lyglo/apps/instasavegram/views/SquareImageView;->setMeasuredDimension(II)V

    .line 29
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1, p1, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 35
    return-void
.end method
