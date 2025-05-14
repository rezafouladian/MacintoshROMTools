fn main() {
    let mut storage: u16 = 0;
    let mut sum: u32 = 0;
    let mut high_sum: u32 = 0;
    let mut low_sum: u32 = 0;
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!("Usage: {} <file>", args[0]);
        return;
    }
    let file_name = &args[1];
    let mut file_bytes = std::fs::read(file_name).unwrap();
    for (i, byte) in file_bytes.iter().enumerate() {
        if ((i >= 4) & (i < 48)) | (i >= 64) {
            if i % 2 == 0 {
                storage = (*byte as u16) << 8;
                high_sum += *byte as u32;
            }
            else {
                storage += *byte as u16;
                sum += storage as u32;
                low_sum += *byte as u32;
            }
        }
    }
    // Add the byte sums into the main checksum
    sum += (high_sum >> 24) << 8;
    sum += (low_sum >> 24) << 8;
    sum += ((high_sum << 16) >> 24 ) << 8;
    sum += ((low_sum << 16) >> 24 ) << 8;
    sum += (high_sum << 8) >> 24;
    sum += (low_sum << 8) >> 24;
    sum += (high_sum << 24) >> 24;
    sum += (low_sum << 24) >> 24;
    // Add the byte sums into the file
    file_bytes[0x30] = (high_sum >> 24) as u8;
    file_bytes[0x31] = (high_sum >> 16) as u8;
    file_bytes[0x32] = (high_sum >> 8) as u8;
    file_bytes[0x33] = high_sum as u8;
    file_bytes[0x34] = (low_sum >> 24) as u8;
    file_bytes[0x35] = (low_sum >> 16) as u8;
    file_bytes[0x36] = (low_sum >> 8) as u8;
    file_bytes[0x37] = low_sum as u8;
    // Add the checksum into the file
    file_bytes[0x0] = (sum >> 24) as u8;
    file_bytes[0x1] = (sum >> 16) as u8;
    file_bytes[0x2] = (sum >> 8) as u8;
    file_bytes[0x3] = sum as u8;
    // Save the file
    std::fs::write(file_name, file_bytes).unwrap();
}