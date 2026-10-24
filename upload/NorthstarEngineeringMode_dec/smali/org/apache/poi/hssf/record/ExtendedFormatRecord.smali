.class public final Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final ALT_BARS:S = 0x3s

.field public static final BIG_SPOTS:S = 0x9s

.field public static final BRICKS:S = 0xas

.field public static final CENTER:S = 0x2s

.field public static final CENTER_SELECTION:S = 0x6s

.field public static final DASHED:S = 0x3s

.field public static final DASH_DOT:S = 0x9s

.field public static final DASH_DOT_DOT:S = 0xbs

.field public static final DIAMONDS:S = 0x10s

.field public static final DOTTED:S = 0x4s

.field public static final DOUBLE:S = 0x6s

.field public static final FILL:S = 0x4s

.field public static final FINE_DOTS:S = 0x2s

.field public static final GENERAL:S = 0x0s

.field public static final HAIR:S = 0x7s

.field public static final JUSTIFY:S = 0x5s

.field public static final LEFT:S = 0x1s

.field public static final MEDIUM:S = 0x2s

.field public static final MEDIUM_DASHED:S = 0x8s

.field public static final MEDIUM_DASH_DOT:S = 0xas

.field public static final MEDIUM_DASH_DOT_DOT:S = 0xcs

.field public static final NONE:S = 0x0s

.field public static final NO_FILL:S = 0x0s

.field public static final NULL:S = -0x10s

.field public static final RIGHT:S = 0x3s

.field public static final SLANTED_DASH_DOT:S = 0xds

.field public static final SOLID_FILL:S = 0x1s

.field public static final SPARSE_DOTS:S = 0x4s

.field public static final SQUARES:S = 0xfs

.field public static final THICK:S = 0x5s

.field public static final THICK_BACKWARD_DIAG:S = 0x7s

.field public static final THICK_FORWARD_DIAG:S = 0x8s

.field public static final THICK_HORZ_BANDS:S = 0x5s

.field public static final THICK_VERT_BANDS:S = 0x6s

.field public static final THIN:S = 0x1s

.field public static final THIN_BACKWARD_DIAG:S = 0xds

.field public static final THIN_FORWARD_DIAG:S = 0xes

.field public static final THIN_HORZ_BANDS:S = 0xbs

.field public static final THIN_VERT_BANDS:S = 0xcs

.field public static final VERTICAL_BOTTOM:S = 0x2s

.field public static final VERTICAL_CENTER:S = 0x1s

.field public static final VERTICAL_JUSTIFY:S = 0x3s

.field public static final VERTICAL_TOP:S = 0x0s

.field public static final XF_CELL:S = 0x0s

.field public static final XF_STYLE:S = 0x1s

.field private static final _123_prefix:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag:Lorg/apache/poi/util/BitField;

.field private static final _adtl_diag_line_style:Lorg/apache/poi/util/BitField;

.field private static final _adtl_fill_pattern:Lorg/apache/poi/util/BitField;

.field private static final _alignment:Lorg/apache/poi/util/BitField;

.field private static final _border_bottom:Lorg/apache/poi/util/BitField;

.field private static final _border_left:Lorg/apache/poi/util/BitField;

.field private static final _border_right:Lorg/apache/poi/util/BitField;

.field private static final _border_top:Lorg/apache/poi/util/BitField;

.field private static final _bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _diag:Lorg/apache/poi/util/BitField;

.field private static final _fill_background:Lorg/apache/poi/util/BitField;

.field private static final _fill_foreground:Lorg/apache/poi/util/BitField;

.field private static final _hidden:Lorg/apache/poi/util/BitField;

.field private static final _indent:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_border:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_font:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_format:Lorg/apache/poi/util/BitField;

.field private static final _indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

.field private static final _justify_last:Lorg/apache/poi/util/BitField;

.field private static final _left_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _locked:Lorg/apache/poi/util/BitField;

.field private static final _merge_cells:Lorg/apache/poi/util/BitField;

.field private static final _parent_index:Lorg/apache/poi/util/BitField;

.field private static final _reading_order:Lorg/apache/poi/util/BitField;

.field private static final _right_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _rotation:Lorg/apache/poi/util/BitField;

.field private static final _shrink_to_fit:Lorg/apache/poi/util/BitField;

.field private static final _top_border_palette_idx:Lorg/apache/poi/util/BitField;

.field private static final _vertical_alignment:Lorg/apache/poi/util/BitField;

.field private static final _wrap_text:Lorg/apache/poi/util/BitField;

.field private static final _xf_type:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0xe0s


# instance fields
.field private field_1_font_index:S

.field private field_2_format_index:S

.field private field_3_cell_options:S

.field private field_4_alignment_options:S

.field private field_5_indention_options:S

.field private field_6_border_options:S

.field private field_7_palette_options:S

.field private field_8_adtl_palette_options:I

.field private field_9_fill_palette_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    const v1, 0xfff0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x70

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    const v0, 0xff00

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x400

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x800

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x1000

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x2000

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x4000

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    const v1, 0x8000

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xf00

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    const v0, 0xf000

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x7f

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x3f80

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    const v2, 0xc000

    invoke-static {v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    const v2, 0x1fc000

    invoke-static {v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    const/high16 v2, 0x1e00000

    invoke-static {v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    const/high16 v2, -0x4000000

    invoke-static {v2}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    invoke-static {v1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->bf(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>(Lorg/apache/poi/hssf/record/StandardRecord;)V

    .line 3
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    .line 4
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    .line 5
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 6
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 7
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 8
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 9
    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 10
    iget v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 11
    iget-short p1, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 13
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    .line 14
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    .line 16
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    .line 17
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    .line 18
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    .line 19
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    .line 20
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    .line 21
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method private static bf(I)Lorg/apache/poi/util/BitField;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cloneStyleFrom(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V
    .locals 1

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    iget-short v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iput-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    iget v0, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    iget-short p1, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->copy()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/Record;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->copy()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/poi/hssf/record/StandardRecord;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->copy()Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->stateSummary()[I

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->stateSummary()[I

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public get123Prefix()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getAdtlDiag()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getAdtlDiagLineStyle()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getAdtlFillPattern()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getAdtlPaletteOptions()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return p0
.end method

.method public getAlignment()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getAlignmentOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return p0
.end method

.method public getBorderBottom()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getBorderLeft()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getBorderOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return p0
.end method

.method public getBorderRight()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getBorderTop()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getBottomBorderPaletteIdx()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getCellOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return p0
.end method

.method public getDataSize()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public getDiag()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getFillBackground()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getFillForeground()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getFillPaletteOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return p0
.end method

.method public getFontIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    return p0
.end method

.method public getFormatIndex()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const/4 v4, 0x1

    filled-new-array {v3, v4}, [I

    move-result-object v5

    const-string v6, "CELL"

    const-string v7, "STYLE"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string/jumbo v5, "xfType"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    const/4 v5, 0x3

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v6, "fontIndex"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    const/4 v6, 0x7

    invoke-direct {v2, v0, v6}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v7, "formatIndex"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v6}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    new-array v7, v5, [Lorg/apache/poi/util/BitField;

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v3

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v4

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "HIDDEN"

    const-string v10, "LOTUS_123_PREFIX"

    const-string v11, "LOCKED"

    filled-new-array {v11, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v7, "cellOptions"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    const/16 v7, 0x8

    invoke-direct {v2, v0, v7}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v8, "parentIndex"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v7}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    new-array v8, v9, [Lorg/apache/poi/util/BitField;

    sget-object v10, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    aput-object v10, v8, v3

    sget-object v10, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    aput-object v10, v8, v4

    const-string v10, "WRAP_TEXT"

    const-string v11, "JUSTIFY_LAST"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v8, v10}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v8, "alignmentOptions"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v7}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v8, "alignment"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    const/16 v8, 0x9

    invoke-direct {v2, v0, v8}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v10, "verticalAlignment"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v8}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v10, "rotation"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v8}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    new-array v7, v7, [Lorg/apache/poi/util/BitField;

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v3

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v4

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v9

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v5

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    const/4 v10, 0x4

    aput-object v8, v7, v10

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    const/4 v11, 0x5

    aput-object v8, v7, v11

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    const/4 v12, 0x6

    aput-object v8, v7, v12

    sget-object v8, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    aput-object v8, v7, v6

    const-string v13, "SHRINK_TO_FIT"

    const-string v14, "MERGE_CELLS"

    const-string v15, "NOT_PARENT_FORMAT"

    const-string v16, "NOT_PARENT_FONT"

    const-string v17, "NOT_PARENT_ALIGNMENT"

    const-string v18, "NOT_PARENT_BORDER"

    const-string v19, "NOT_PARENT_PATTERN"

    const-string v20, "NOT_PARENT_CELL_OPTIONS"

    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v2

    const-string v7, "indentionOptions"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v7, "indent"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v3}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v3, "readingOrder"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "borderOptions"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "borderLeft"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v4}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "borderRight"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v9}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "borderTop"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v9}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "borderBottom"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v9}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v3, "paletteOptions"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "leftBorderPaletteIdx"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v5}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v3, "rightBorderPaletteIdx"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v10}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "diag"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v10}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "adtlPaletteOptions"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v10}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string/jumbo v3, "topBorderPaletteIdx"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v11}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "bottomBorderPaletteIdx"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v11}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "adtlDiag"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v11}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "adtlDiagLineStyle"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v12}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "adtlFillPattern"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/u0;

    invoke-direct {v2, v0, v12}, Lorg/apache/poi/hssf/record/u0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "fillPaletteOptions"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/v0;

    invoke-direct {v2, v0, v12}, Lorg/apache/poi/hssf/record/v0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v3, "fillForeground"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/poi/hssf/record/t0;

    invoke-direct {v2, v0, v6}, Lorg/apache/poi/hssf/record/t0;-><init>(Lorg/apache/poi/hssf/record/ExtendedFormatRecord;I)V

    const-string v0, "fillBackground"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hssf/record/HSSFRecordTypes;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hssf/record/HSSFRecordTypes;->EXTENDED_FORMAT:Lorg/apache/poi/hssf/record/HSSFRecordTypes;

    return-object p0
.end method

.method public getIndent()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getIndentionOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return p0
.end method

.method public getJustifyLast()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getLeftBorderPaletteIdx()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getMergeCells()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getPaletteOptions()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return p0
.end method

.method public getParentIndex()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getReadingOrder()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getRightBorderPaletteIdx()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getRotation()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getShrinkToFit()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getSid()S
    .locals 0

    const/16 p0, 0xe0

    return p0
.end method

.method public getTopBorderPaletteIdx()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    int-to-short p0, p0

    return p0
.end method

.method public getVerticalAlignment()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public getWrapText()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public getXFType()S
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getShortValue(S)S

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 10

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    iget-short v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iget v0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentAlignment()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentBorder()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentCellOptions()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentFont()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentFormat()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isIndentNotParentPattern()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public isLocked()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p0

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFontIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFormatIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getCellOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAlignmentOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getIndentionOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getBorderOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getPaletteOptions()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getAdtlPaletteOptions()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->getFillPaletteOptions()S

    move-result p0

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public set123Prefix(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_123_prefix:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setAdtlDiag(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlDiagLineStyle(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_diag_line_style:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlFillPattern(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_adtl_fill_pattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAdtlPaletteOptions(S)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setAlignment(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setAlignmentOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setBorderBottom(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_bottom:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderLeft(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_left:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderRight(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_right:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBorderTop(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_border_top:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    return-void
.end method

.method public setBottomBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_bottom_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setCellOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setDiag(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_diag:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setFillBackground(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_background:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFillForeground(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_fill_foreground:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFillPaletteOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    return-void
.end method

.method public setFontIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    return-void
.end method

.method public setFormatIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    return-void
.end method

.method public setHidden(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_hidden:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setIndent(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentAlignment(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentBorder(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_border:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentCellOptions(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_cell_options:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentFont(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_font:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentFormat(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_format:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentNotParentPattern(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_indent_not_parent_pattern:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setIndentionOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setJustifyLast(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_justify_last:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setLeftBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_left_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_locked:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setMergeCells(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_merge_cells:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setPaletteOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setParentIndex(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_parent_index:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public setReadingOrder(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_reading_order:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setRightBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_right_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    return-void
.end method

.method public setRotation(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_rotation:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setShrinkToFit(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_shrink_to_fit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    return-void
.end method

.method public setTopBorderPaletteIdx(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_top_border_palette_idx:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    return-void
.end method

.method public setVerticalAlignment(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_vertical_alignment:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setWrapText(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_wrap_text:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    return-void
.end method

.method public setXFType(S)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->_xf_type:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortValue(SS)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    return-void
.end method

.method public stateSummary()[I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_1_font_index:S

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_2_format_index:S

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_3_cell_options:S

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_4_alignment_options:S

    aput v2, v0, v1

    const/4 v1, 0x4

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_5_indention_options:S

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_6_border_options:S

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-short v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_7_palette_options:S

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_8_adtl_palette_options:I

    aput v2, v0, v1

    const/16 v1, 0x8

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtendedFormatRecord;->field_9_fill_palette_options:S

    aput p0, v0, v1

    return-object v0
.end method
