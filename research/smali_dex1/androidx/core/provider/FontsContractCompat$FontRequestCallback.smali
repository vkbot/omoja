.class public Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontRequestCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$FontRequestCallback$FontRequestFailReason;
    }
.end annotation


# static fields
.field public static final FAIL_REASON_FONT_LOAD_ERROR:I = -0x3

.field public static final FAIL_REASON_FONT_NOT_FOUND:I = 0x1

.field public static final FAIL_REASON_FONT_UNAVAILABLE:I = 0x2

.field public static final FAIL_REASON_MALFORMED_QUERY:I = 0x3

.field public static final FAIL_REASON_PROVIDER_NOT_FOUND:I = -0x1

.field public static final FAIL_REASON_SECURITY_VIOLATION:I = -0x4

.field public static final FAIL_REASON_WRONG_CERTIFICATES:I = -0x2

.field public static final RESULT_OK:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final RESULT_SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onTypefaceRequestFailed(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public onTypefaceRetrieved(Landroid/graphics/Typeface;)V
    .registers 2

    .line 1
    return-void
.end method
