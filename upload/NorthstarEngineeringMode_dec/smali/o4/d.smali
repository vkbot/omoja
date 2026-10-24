.class public final Lo4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:D

.field public static final b:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v1, v2, v0}, Lz4/b;->g(D[D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    sput-wide v0, Lo4/d;->a:D

    const/16 v0, 0x1f

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lo4/d;->b:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3fc3a37a020b8c22L    # 0.15342640972002736
        0x3fb4c071bcda0a5bL    # 0.08106146679532726
        0x3fac1098b28dcf33L    # 0.05481412105191765
        0x3fa52a9b923ea649L    # 0.0413406959554093
        0x3fa0fab9626b44ffL    # 0.03316287351993629
        0x3f9c579a268d80b3L    # 0.02767792568499834
        0x3f9850ea113caf0eL    # 0.023746163656297496
        0x3f954a2662fd78a9L    # 0.020790672103765093
        0x3f92eea2e990f134L    # 0.018488450532673187
        0x3f910b4e513fcbedL    # 0.016644691189821193
        0x3f8eff15b81c9cc5L    # 0.015134973221917378
        0x3f8c6b167bebdf36L    # 0.013876128823070748
        0x3f8a3c5f8a1e7d1dL    # 0.012810465242920227
        0x3f885d4d612e4a86L    # 0.01189670994589177
        0x3f86bdfcc7fbdb0aL    # 0.011104559758206917
        0x3f8552805e7b3076L    # 0.010411265261972096
        0x3f8411b75e41049cL    # 0.009799416126158804
        0x3f82f4871b12ab64L    # 0.009255462182712733
        0x3f81f553026fbce1L    # 0.008768700134139386
        0x3f810f9d4c0743a7L    # 0.00833056343336287
        0x3f803fc2d49c8fb9L    # 0.00793411456431402
        0x3f7f0593088014f8L    # 0.007573675487951841
        0x3f7dac773cc5b3cdL    # 0.007244554301320383
        0x3f7c7018733aa9c6L    # 0.00694284010720953
        0x3f7b4d04a067629fL    # 0.006665247032707682
        0x3f7a40514700f36cL    # 0.006408994188004207
        0x3f7947826547fe6cL    # 0.006171712263039458
        0x3f786076c002d4a7L    # 0.0059513701127588475
        0x3f7789583ffc5e8cL    # 0.0057462165130101155
        0x3f76c08f6f194a10L    # 0.005554733551962801
    .end array-data
.end method
