.class public Lcom/android/car/ui/toolbar/SearchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;
    }
.end annotation


# instance fields
.field private final mCloseIcon:Landroid/view/View;

.field private mContentUri:Landroid/net/Uri;

.field private final mEndPadding:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mIdToListItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsPlainText:Z

.field private mSearchCompletedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchText:Landroid/widget/EditText;

.field private final mStartPadding:I

.field private final mStartPaddingWithoutIcon:I

.field private mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mWasShown:Z

.field private mWideScreenImeContentAreaView:Landroid/view/View;

.field private mWideScreenSearchItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/android/car/ui/toolbar/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/ui/toolbar/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mIdToListItem:Ljava/util/Map;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    .line 98
    new-instance p2, Lcom/android/car/ui/toolbar/SearchView$1;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/SearchView$1;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    iput-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 p2, 0x0

    .line 113
    iput-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    .line 239
    iput-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    .line 127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "input_method"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 130
    sget v0, Lcom/android/car/ui/R$layout;->car_ui_toolbar_search_view:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_bar:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    .line 133
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_icon:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    .line 134
    sget p3, Lcom/android/car/ui/R$id;->car_ui_toolbar_search_close:I

    invoke-static {p0, p3}, Lcom/android/car/ui/utils/CarUiUtils;->requireViewByRefId(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    .line 136
    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X_FGZTNuIRv-v80Y2K7F5FfOzQE;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$X_FGZTNuIRv-v80Y2K7F5FfOzQE;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaddingStart()I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPaddingWithoutIcon:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/car/ui/R$dimen;->car_ui_toolbar_search_search_icon_container_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/car/ui/R$dimen;->car_ui_toolbar_search_close_icon_container_width:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    .line 151
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget p3, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    iget v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {p1, p3, p2, v0, p2}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 154
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance p2, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$62IJ9o41BAOfbKaNiYxwV4BlZAM;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$62IJ9o41BAOfbKaNiYxwV4BlZAM;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance p2, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$PdhJUp_CUIyKm_OMSe2KP-coplc;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$PdhJUp_CUIyKm_OMSe2KP-coplc;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance p2, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$v5QvEQm_1c9Nac5MG22mHW2cS2M;

    invoke-direct {p2, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$v5QvEQm_1c9Nac5MG22mHW2cS2M;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 180
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    instance-of p2, p1, Lcom/android/car/ui/toolbar/CarUiEditText;

    if-eqz p2, :cond_0

    .line 181
    check-cast p1, Lcom/android/car/ui/toolbar/CarUiEditText;

    new-instance p2, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/car/ui/toolbar/SearchView$SearchViewImeCallback;-><init>(Lcom/android/car/ui/toolbar/SearchView;Lcom/android/car/ui/toolbar/SearchView$1;)V

    invoke-virtual {p1, p2}, Lcom/android/car/ui/toolbar/CarUiEditText;->registerOnPrivateImeCommandListener(Lcom/android/car/ui/toolbar/PrivateImeCommandCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/ui/toolbar/SearchView;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->onSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/ui/toolbar/SearchView;)Ljava/util/Map;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIdToListItem:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/View;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenImeContentAreaView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/SurfaceControlViewHost;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/car/ui/toolbar/SearchView;Landroid/view/SurfaceControlViewHost;)Landroid/view/SurfaceControlViewHost;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/car/ui/toolbar/SearchView;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/car/ui/toolbar/SearchView;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/car/ui/toolbar/SearchView;)Landroid/widget/EditText;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/car/ui/toolbar/SearchView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/car/ui/toolbar/SearchView;)Landroid/net/Uri;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method private bitmapToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 1

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 329
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method private displaySearchWideScreen()V
    .locals 8

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SearchResultsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "search_results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mContentUri:Landroid/net/Uri;

    .line 283
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIdToListItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenImeContentAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenSearchItemList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const-string v1, "automotive_wide_screen"

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;

    .line 302
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 303
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "primaryId"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "secondary"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_2

    .line 308
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/car/ui/toolbar/SearchView;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const-string v7, "primary_image"

    .line 307
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 309
    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getSupplementalIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    .line 311
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/car/ui/toolbar/SearchView;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    const-string v7, "secondary_image"

    .line 310
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 314
    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v2

    :goto_3
    const-string v7, "title"

    .line 313
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/android/car/ui/recyclerview/CarUiContentListItem;->getBody()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v2

    :goto_4
    const-string v7, "subtitle"

    .line 315
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/car/ui/toolbar/SearchView;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 318
    iget-object v4, p0, Lcom/android/car/ui/toolbar/SearchView;->mIdToListItem:Ljava/util/Map;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wide_screen_search_results"

    invoke-virtual {v0, p0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private isEnter(Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private synthetic lambda$installWindowInsetsListener$4()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenImeContentAreaView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenImeContentAreaView:Landroid/view/View;

    iget v2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceWidth:I

    iget p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$installWindowInsetsListener$5(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 196
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/SearchView;->displaySearchWideScreen()V

    .line 198
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$ejP5xb3mVt3hnAc1mk9YpSCVzMo;

    invoke-direct {v1, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$ejP5xb3mVt3hnAc1mk9YpSCVzMo;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 139
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/car/ui/toolbar/SearchView;->isEnter(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 170
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/SearchView;->notifyQuerySubmit()V

    :cond_1
    return p2

    .line 168
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/SearchView;->notifyQuerySubmit()V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private notifyQuerySubmit()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 234
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;

    .line 235
    invoke-interface {v0}, Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;->onSearchCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSearch(Ljava/lang/String;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;

    .line 390
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;->onSearch(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method installWindowInsetsListener(Landroid/view/View;)V
    .locals 2

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$aawmi8d94Z_qM5EgIyZaAJHxxMc;

    invoke-direct {v0, p0}, Lcom/android/car/ui/toolbar/-$$Lambda$SearchView$aawmi8d94Z_qM5EgIyZaAJHxxMc;-><init>(Lcom/android/car/ui/toolbar/SearchView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public synthetic lambda$installWindowInsetsListener$4$SearchView()V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/ui/toolbar/SearchView;->lambda$installWindowInsetsListener$4()V

    return-void
.end method

.method public synthetic lambda$installWindowInsetsListener$5$SearchView(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/SearchView;->lambda$installWindowInsetsListener$5(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$new$0$SearchView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$1$SearchView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$new$2$SearchView(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$2(Landroid/view/View;Z)V

    return-void
.end method

.method public synthetic lambda$new$3$SearchView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/ui/toolbar/SearchView;->lambda$new$3(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 243
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    iget-boolean p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    if-nez p2, :cond_2

    .line 247
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mCloseIcon:Landroid/view/View;

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    .line 250
    iget-object p2, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 252
    :cond_2
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mWasShown:Z

    return-void
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    sget p1, Lcom/android/car/ui/R$drawable;->car_ui_icon_search:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setPlainText(Z)V
    .locals 4

    .line 369
    iget-boolean v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPaddingWithoutIcon:I

    iget v3, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 372
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 373
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    iget v2, p0, Lcom/android/car/ui/toolbar/SearchView;->mStartPadding:I

    iget v3, p0, Lcom/android/car/ui/toolbar/SearchView;->mEndPadding:I

    invoke-virtual {v1, v2, v0, v3, v0}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    .line 376
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 377
    iget-object v1, p0, Lcom/android/car/ui/toolbar/SearchView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    :goto_0
    iput-boolean p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mIsPlainText:Z

    .line 382
    iget-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setSearchCompletedListeners(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchCompletedListener;",
            ">;)V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchCompletedListeners:Ljava/util/Set;

    return-void
.end method

.method public setSearchItemsForWideScreen(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/car/ui/imewidescreen/CarUiImeSearchListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenSearchItemList:Ljava/util/List;

    .line 276
    invoke-direct {p0}, Lcom/android/car/ui/toolbar/SearchView;->displaySearchWideScreen()V

    return-void
.end method

.method public setSearchListeners(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/car/ui/toolbar/Toolbar$OnSearchListener;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchListeners:Ljava/util/Set;

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method setViewToImeWideScreenSurface(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/car/ui/toolbar/SearchView;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    :cond_0
    if-eqz p1, :cond_2

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "view should not have a parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView;->mWideScreenImeContentAreaView:Landroid/view/View;

    return-void
.end method
