.class public Lcom/astuetz/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/astuetz/PagerSlidingTabStrip$SavedState;,
        Lcom/astuetz/PagerSlidingTabStrip$PageListener;,
        Lcom/astuetz/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# static fields
.field private static final ATTRS:[I


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private dividerColor:I

.field private dividerPadding:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerWidth:I

.field private expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private locale:Ljava/util/Locale;

.field private final pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabBackgroundResId:I

.field private tabCount:I

.field private tabPadding:I

.field private tabTextColor:I

.field private tabTextSize:I

.field private tabTypeface:Landroid/graphics/Typeface;

.field private tabTypefaceStyle:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private textAllCaps:Z

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/astuetz/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const v6, -0x99999a

    const/4 v2, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/astuetz/PagerSlidingTabStrip$PageListener;-><init>(Lcom/astuetz/PagerSlidingTabStrip;Lcom/astuetz/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    .line 70
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    .line 76
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 77
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 78
    const/high16 v0, 0x1a000000

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 80
    iput-boolean v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 81
    iput-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 83
    const/16 v0, 0x34

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 84
    const/16 v0, 0x8

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 85
    iput v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 86
    const/16 v0, 0xc

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 87
    const/16 v0, 0x18

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 88
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 90
    const/16 v0, 0xc

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 91
    iput v6, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 93
    iput v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 95
    iput v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    .line 97
    sget v0, Lcom/astuetz/pagerslidingtabstrip/R$drawable;->background_tab:I

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 112
    invoke-virtual {p0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 123
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 124
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 125
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 126
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 127
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v1, v1

    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    .line 128
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 132
    sget-object v0, Lcom/astuetz/PagerSlidingTabStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 135
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    .line 137
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    sget-object v0, Lcom/astuetz/pagerslidingtabstrip/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 144
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 145
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 146
    const/4 v1, 0x3

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 147
    const/4 v1, 0x4

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 148
    const/4 v1, 0x5

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 149
    const/4 v1, 0x6

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 150
    const/16 v1, 0x8

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 151
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 152
    const/4 v1, 0x7

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 153
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 162
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/astuetz/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return v0
.end method

.method static synthetic access$102(Lcom/astuetz/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/astuetz/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/astuetz/PagerSlidingTabStrip;F)F
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$500(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addIconTab(II)V
    .locals 2

    .prologue
    .line 239
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 244
    return-void
.end method

.method private addTab(ILandroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 248
    new-instance v0, Lcom/astuetz/PagerSlidingTabStrip$2;

    invoke-direct {v0, p0, p1}, Lcom/astuetz/PagerSlidingTabStrip$2;-><init>(Lcom/astuetz/PagerSlidingTabStrip;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 256
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->expandedTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 257
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0
.end method

.method private addTextTab(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 232
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 234
    invoke-direct {p0, p1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V

    .line 235
    return-void
.end method

.method private scrollToChild(II)V
    .locals 2

    .prologue
    .line 290
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 296
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 297
    :cond_2
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, v1

    .line 300
    :cond_3
    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, v1, :cond_0

    .line 301
    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->lastScrollX:I

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->scrollTo(II)V

    goto :goto_0
.end method

.method private updateTabStyles()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 261
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 267
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 269
    check-cast v0, Landroid/widget/TextView;

    .line 270
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 271
    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 272
    iget v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    iget-boolean v3, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    if-eqz v3, :cond_0

    .line 277
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 261
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 286
    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public isTextAllCaps()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    .line 195
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/astuetz/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/astuetz/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip$IconTabProvider;->getPageIconResId(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addIconTab(II)V

    .line 195
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->addTextTab(ILjava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 207
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lcom/astuetz/PagerSlidingTabStrip$1;-><init>(Lcom/astuetz/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 225
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 309
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_1

    .line 351
    :cond_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 319
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    .line 324
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 327
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    .line 333
    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v4, v5, v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v2

    .line 334
    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F

    sub-float v2, v5, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 337
    :cond_2
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 341
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 346
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 533
    check-cast p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    .line 534
    invoke-virtual {p1}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 535
    iget v0, p1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    .line 536
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 537
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 541
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 542
    new-instance v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 543
    iget v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I

    iput v0, v1, Lcom/astuetz/PagerSlidingTabStrip$SavedState;->currentPosition:I

    .line 544
    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->textAllCaps:Z

    .line 483
    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .prologue
    .line 428
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 429
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 430
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerColor:I

    .line 434
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 435
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .prologue
    .line 451
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->dividerPadding:I

    .line 452
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 453
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 392
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 393
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorColor:I

    .line 397
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 398
    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .prologue
    .line 405
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->indicatorHeight:I

    .line 406
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 407
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 187
    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .prologue
    .line 460
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I

    .line 461
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 462
    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->shouldExpand:Z

    .line 470
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->requestLayout()V

    .line 471
    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .prologue
    .line 515
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabBackgroundResId:I

    .line 516
    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .prologue
    .line 523
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabPadding:I

    .line 524
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 525
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 495
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    .line 496
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 497
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextColor:I

    .line 501
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 502
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 486
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTextSize:I

    .line 487
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 488
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypeface:Landroid/graphics/Typeface;

    .line 510
    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip;->tabTypefaceStyle:I

    .line 511
    invoke-direct {p0}, Lcom/astuetz/PagerSlidingTabStrip;->updateTabStyles()V

    .line 512
    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 415
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 416
    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineColor:I

    .line 420
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 421
    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .prologue
    .line 442
    iput p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->underlineHeight:I

    .line 443
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->invalidate()V

    .line 444
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;

    .line 176
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/astuetz/PagerSlidingTabStrip;->pageListener:Lcom/astuetz/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 182
    invoke-virtual {p0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 183
    return-void
.end method
