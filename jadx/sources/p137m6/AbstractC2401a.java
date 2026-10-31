package p137m6;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.location.LocationRequestCompat;
import com.sun.jna.Function;
import java.text.DecimalFormat;
import okhttp3.internal.p160ws.WebSocketProtocol;
import org.apache.commons.net.bsd.RCommandClient;
import org.apache.commons.net.ftp.FTPReply;
import org.apache.commons.net.imap.IMAP;
import org.apache.commons.net.nntp.NNTP;
import org.apache.commons.net.nntp.NNTPReply;
import org.apache.commons.net.smtp.SMTPReply;
import org.apache.commons.net.telnet.TelnetCommand;
import p130l9.C2237i;

/* JADX INFO: renamed from: m6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2401a {

    /* JADX INFO: renamed from: a */
    public static final int[][] f6501a = {new int[]{121, FTPReply.SERVICE_NOT_READY, 127, WebSocketProtocol.PAYLOAD_SHORT, 133, 132, 139, 138, 145, 144, 151, FTPReply.FILE_STATUS_OK, 157, 156, 163, 162, 169, 168, 175, 174, 181, 180, 187, 186, 193, 192, NNTPReply.DEBUG_OUTPUT, 198, -2, -2}, new int[]{123, 122, 129, 128, 135, 134, 141, 140, 147, 146, 153, 152, 159, 158, 165, 164, 171, 170, 177, 176, 183, 182, 189, 188, 195, 194, NNTPReply.SERVER_READY_POSTING_NOT_ALLOWED, 200, 816, -3}, new int[]{FTPReply.DATA_CONNECTION_ALREADY_OPEN, 124, 131, 130, 137, 136, IMAP.DEFAULT_PORT, 142, 149, 148, 155, 154, 161, 160, 167, 166, 173, 172, 179, 178, 185, 184, 191, 190, 197, 196, 203, 202, 818, 817}, new int[]{283, 282, 277, 276, 271, 270, 265, 264, 259, 258, TelnetCommand.f8149DO, TelnetCommand.WONT, TelnetCommand.f8150EC, TelnetCommand.AYT, TelnetCommand.NOP, 240, 235, FTPReply.SECURITY_DATA_EXCHANGE_COMPLETE, FTPReply.ENTERING_EPSV_MODE, 228, NNTPReply.ARTICLE_RETRIEVED_REQUEST_TEXT_SEPARATELY, NNTPReply.ARTICLE_RETRIEVED_BODY_FOLLOWS, 217, 216, 211, 210, NNTPReply.CLOSING_CONNECTION, 204, 819, -3}, new int[]{285, 284, 279, 278, 273, 272, 267, 266, 261, 260, 255, TelnetCommand.DONT, TelnetCommand.f8152GA, TelnetCommand.f8151EL, TelnetCommand.BREAK, 242, TelnetCommand.SUSP, TelnetCommand.EOF, NNTPReply.NEW_NEWSGROUP_LIST_FOLLOWS, 230, FTPReply.DATA_CONNECTION_OPEN, 224, 219, 218, FTPReply.FILE_STATUS, FTPReply.DIRECTORY_STATUS, 207, 206, 821, 820}, new int[]{287, 286, NNTPReply.AUTHENTICATION_ACCEPTED, 280, 275, 274, 269, 268, 263, 262, 257, 256, 251, 250, TelnetCommand.f8147AO, TelnetCommand.f8153IP, TelnetCommand.EOR, TelnetCommand.ABORT, 233, 232, FTPReply.ENTERING_PASSIVE_MODE, FTPReply.CLOSING_DATA_CONNECTION, 221, 220, FTPReply.NAME_SYSTEM_TYPE, 214, 209, 208, 822, -3}, new int[]{289, 288, 295, 294, 301, 300, 307, 306, 313, 312, 319, TypedValues.AttributesType.TYPE_PIVOT_TARGET, 325, 324, FTPReply.NEED_PASSWORD, 330, 337, 336, 343, 342, 349, 348, 355, SMTPReply.START_MAIL_INPUT, 361, 360, 367, 366, 824, 823}, new int[]{291, 290, 297, 296, 303, 302, 309, 308, 315, 314, 321, 320, 327, 326, 333, FTPReply.NEED_ACCOUNT, 339, 338, 345, 344, 351, FTPReply.FILE_ACTION_PENDING, 357, 356, 363, 362, 369, 368, 825, -3}, new int[]{293, 292, 299, 298, 305, 304, 311, 310, TypedValues.AttributesType.TYPE_EASING, TypedValues.AttributesType.TYPE_PATH_ROTATE, 323, 322, 329, 328, 335, FTPReply.SECURITY_MECHANISM_IS_OK, 341, NNTPReply.SEND_ARTICLE_TO_POST, 347, 346, 353, 352, 359, 358, 365, 364, 371, 370, 827, 826}, new int[]{409, 408, TypedValues.CycleType.TYPE_ALPHA, TypedValues.CycleType.TYPE_VISIBILITY, 397, 396, 391, 390, 79, 78, -2, -2, 13, 12, 37, 36, 2, -1, 44, 43, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 385, Function.USE_VARARGS, 379, 378, 373, 372, 828, -3}, new int[]{NNTPReply.NO_SUCH_NEWSGROUP, 410, 405, 404, 399, 398, 393, 392, 81, 80, 40, -2, 15, 14, 39, 38, 3, -1, -1, 45, 111, 110, 387, 386, NNTPReply.MORE_AUTH_INFO_REQUIRED, 380, 375, 374, 830, 829}, new int[]{413, NNTPReply.NO_NEWSGROUP_SELECTED, 407, 406, TypedValues.CycleType.TYPE_CURVE_FIT, NNTPReply.SERVICE_DISCONTINUED, 395, 394, 83, 82, 41, -3, -3, -3, -3, -3, 5, 4, 47, 46, 113, 112, 389, 388, 383, 382, 377, 376, 831, -3}, new int[]{415, 414, 421, 420, 427, FTPReply.TRANSFER_ABORTED, 103, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 55, 54, 16, -3, -3, -3, -3, -3, -3, -3, 20, 19, 85, 84, 433, 432, 439, 438, 445, 444, 833, 832}, new int[]{417, TypedValues.CycleType.TYPE_PATH_ROTATE, 423, 422, 429, 428, 105, LocationRequestCompat.QUALITY_LOW_POWER, 57, 56, -3, -3, -3, -3, -3, -3, -3, -3, 22, 21, 87, 86, NNTPReply.ARTICLE_NOT_WANTED, 434, NNTPReply.POSTING_FAILED, NNTPReply.POSTING_NOT_ALLOWED, 447, 446, 834, -3}, new int[]{419, 418, 425, TypedValues.CycleType.TYPE_WAVE_OFFSET, FTPReply.UNAVAILABLE_RESOURCE, NNTPReply.NO_SUCH_ARTICLE_FOUND, 107, 106, 59, 58, -3, -3, -3, -3, -3, -3, -3, -3, -3, 23, 89, 88, NNTPReply.ARTICLE_REJECTED, NNTPReply.TRANSFER_FAILED, 443, 442, 449, 448, 836, 835}, new int[]{481, NNTPReply.AUTHENTICATION_REQUIRED, 475, 474, 469, 468, 48, -2, 30, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 0, 53, 52, 463, 462, 457, 456, 451, 450, 837, -3}, new int[]{483, NNTPReply.AUTHENTICATION_REJECTED, 477, 476, 471, 470, 49, -1, -2, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, -2, -1, 465, 464, 459, 458, 453, 452, 839, 838}, new int[]{485, 484, 479, 478, 473, 472, 51, 50, 31, -3, -3, -3, -3, -3, -3, -3, -3, -3, -3, 1, -2, 42, 467, 466, 461, 460, 455, 454, 840, -3}, new int[]{487, 486, 493, 492, 499, 498, 97, 96, 61, 60, -3, -3, -3, -3, -3, -3, -3, -3, -3, 26, 91, 90, TypedValues.PositionType.TYPE_SIZE_PERCENT, 504, FrameMetricsAggregator.EVERY_DURATION, TypedValues.PositionType.TYPE_POSITION_TYPE, 517, 516, 842, 841}, new int[]{489, 488, 495, 494, 501, 500, 99, 98, 63, 62, -3, -3, -3, -3, -3, -3, -3, -3, 28, 27, 93, 92, TypedValues.PositionType.TYPE_PERCENT_Y, TypedValues.PositionType.TYPE_PERCENT_X, 513, 512, 519, 518, 843, -3}, new int[]{491, 490, 497, 496, 503, 502, TypedValues.TYPE_TARGET, 100, 65, 64, 17, -3, -3, -3, -3, -3, -3, -3, 18, 29, 95, 94, 509, TypedValues.PositionType.TYPE_CURVE_FIT, 515, RCommandClient.DEFAULT_PORT, 521, 520, 845, 844}, new int[]{559, 558, 553, 552, 547, 546, 541, 540, 73, 72, 32, -3, -3, -3, -3, -3, -3, 10, 67, 66, 115, 114, FTPReply.FAILED_SECURITY_CHECK, FTPReply.REQUEST_DENIED, 529, 528, 523, 522, 846, -3}, new int[]{561, 560, 555, SMTPReply.TRANSACTION_FAILED, 549, 548, 543, 542, 75, 74, -2, -1, 7, 6, 35, 34, 11, -2, 69, 68, 117, 116, 537, FTPReply.REQUESTED_PROT_LEVEL_NOT_SUPPORTED, 531, FTPReply.NOT_LOGGED_IN, 525, 524, 848, 847}, new int[]{563, 562, 557, 556, 551, 550, 545, 544, 77, 76, -2, 33, 9, 8, 25, 24, -1, -2, 71, 70, NNTP.DEFAULT_PORT, 118, 539, 538, FTPReply.DENIED_FOR_POLICY_REASONS, FTPReply.NEED_ACCOUNT_FOR_STORING_FILES, 527, 526, 849, -3}, new int[]{565, 564, 571, 570, 577, 576, 583, 582, 589, 588, 595, 594, 601, 600, TypedValues.MotionType.TYPE_PATHMOTION_ARC, TypedValues.MotionType.TYPE_ANIMATE_CIRCLEANGLE_TO, 613, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_ID, 619, 618, 625, 624, 631, 630, 637, 636, 643, 642, 851, 850}, new int[]{567, 566, 573, 572, 579, 578, 585, 584, 591, 590, 597, 596, TypedValues.MotionType.TYPE_EASING, TypedValues.MotionType.TYPE_QUANTIZE_MOTION_PHASE, TypedValues.MotionType.TYPE_POLAR_RELATIVETO, TypedValues.MotionType.TYPE_DRAW_PATH, 615, 614, 621, 620, 627, 626, 633, 632, 639, 638, 645, 644, 852, -3}, new int[]{569, 568, 575, 574, 581, 580, 587, 586, 593, 592, 599, 598, TypedValues.MotionType.TYPE_ANIMATE_RELATIVE_TO, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR, TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE, TypedValues.MotionType.TYPE_QUANTIZE_MOTIONSTEPS, 617, 616, 623, 622, 629, 628, 635, 634, 641, 640, 647, 646, 854, 853}, new int[]{727, 726, 721, 720, 715, 714, 709, 708, 703, TypedValues.TransitionType.TYPE_TO, 697, 696, 691, 690, 685, 684, 679, 678, 673, 672, 667, 666, 661, 660, 655, 654, 649, 648, 855, -3}, new int[]{729, 728, 723, 722, 717, 716, 711, 710, TypedValues.TransitionType.TYPE_INTERPOLATOR, TypedValues.TransitionType.TYPE_AUTO_TRANSITION, 699, 698, 693, 692, 687, 686, 681, 680, 675, 674, 669, 668, 663, 662, 657, 656, 651, 650, 857, 856}, new int[]{731, 730, 725, 724, 719, 718, 713, 712, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, TypedValues.TransitionType.TYPE_STAGGERED, TypedValues.TransitionType.TYPE_FROM, TypedValues.TransitionType.TYPE_DURATION, 695, 694, 689, 688, 683, 682, 677, 676, 671, 670, 665, 664, 659, 658, 653, 652, 858, -3}, new int[]{733, 732, 739, 738, 745, 744, 751, 750, 757, 756, 763, 762, 769, 768, 775, 774, 781, 780, 787, 786, 793, 792, 799, 798, 805, 804, 811, 810, 860, 859}, new int[]{735, 734, 741, 740, 747, 746, 753, 752, 759, 758, 765, 764, 771, 770, 777, 776, 783, 782, 789, 788, 795, 794, 801, 800, 807, 806, 813, 812, 861, -3}, new int[]{737, 736, 743, 742, 749, 748, 755, 754, 761, 760, 767, 766, 773, 772, 779, 778, 785, 784, 791, 790, 797, 796, 803, 802, 809, 808, 815, 814, 863, 862}};

    /* JADX INFO: renamed from: b */
    public static final String[] f6502b = {"\nABCDEFGHIJKLMNOPQRSTUVWXYZ\ufffa\u001c\u001d\u001e\ufffb ￼\"#$%&'()*+,-./0123456789:\ufff1\ufff2\ufff3\ufff4\ufff8", "`abcdefghijklmnopqrstuvwxyz\ufffa\u001c\u001d\u001e\ufffb{￼}~\u007f;<=>?[\\]^_ ,./:@!|￼\ufff5\ufff6￼\ufff0\ufff2\ufff3\ufff4\ufff7", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\ufffa\u001c\u001d\u001eÛÜÝÞßª¬±²³µ¹º¼½¾\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\ufff7 \ufff9\ufff3\ufff4\ufff8", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú\ufffa\u001c\u001d\u001e\ufffbûüýþÿ¡¨«¯°´·¸»¿\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\ufff7 \ufff2\ufff9\ufff4\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\ufffa￼￼\u001b\ufffb\u001c\u001d\u001e\u001f\u009f ¢£¤¥¦§©\u00ad®¶\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\ufff7 \ufff2\ufff3\ufff9\ufff8", "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?"};

    /* JADX INFO: renamed from: a */
    public static int m3765a(byte[] bArr, byte[] bArr2) {
        if (bArr2.length == 0) {
            C2237i.m3594a();
            return 0;
        }
        int length = 0;
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            int i11 = bArr2[i10] - 1;
            length += (((1 << (5 - (i11 % 6))) & bArr[i11 / 6]) == 0 ? 0 : 1) << ((bArr2.length - i10) - 1);
        }
        return length;
    }

    /* JADX INFO: renamed from: b */
    public static String m3766b(byte[] bArr, int i10, int i11) {
        StringBuilder sb = new StringBuilder();
        int i12 = i10;
        int i13 = -1;
        int i14 = 0;
        int i15 = 0;
        while (i12 < i10 + i11) {
            char cCharAt = f6502b[i14].charAt(bArr[i12]);
            switch (cCharAt) {
                case 65520:
                case 65521:
                case 65522:
                case 65523:
                case 65524:
                    i15 = i14;
                    i14 = cCharAt - 65520;
                    i13 = 1;
                    break;
                case 65525:
                    i13 = 2;
                    i15 = i14;
                    i14 = 0;
                    break;
                case 65526:
                    i13 = 3;
                    i15 = i14;
                    i14 = 0;
                    break;
                case 65527:
                    i13 = -1;
                    i14 = 0;
                    break;
                case 65528:
                    i13 = -1;
                    i14 = 1;
                    break;
                case 65529:
                    i13 = -1;
                    break;
                case 65530:
                default:
                    sb.append(cCharAt);
                    break;
                case 65531:
                    int i16 = (bArr[i12 + 1] << 24) + (bArr[i12 + 2] << 18) + (bArr[i12 + 3] << 12) + (bArr[i12 + 4] << 6);
                    i12 += 5;
                    sb.append(new DecimalFormat("000000000").format(i16 + bArr[i12]));
                    break;
            }
            int i17 = i13 - 1;
            if (i13 == 0) {
                i14 = i15;
            }
            i12++;
            i13 = i17;
        }
        while (sb.length() > 0 && sb.charAt(sb.length() - 1) == 65532) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }
}
