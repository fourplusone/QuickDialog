//
//  QSpinnerElement.m
//  QuickDialog
//
//  Created by Matthias Bartelmeß on 23.11.11.
//  Copyright (c) 2011 fourplusone. All rights reserved.
//

#import "QSpinnerElement.h"

@implementation QSpinnerElement

- (QSpinnerElement *)init {
    self = [super initWithTitle:nil Value:nil];
    return self;
}

- (UITableViewCell *)getCellForTableView:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller {
    UITableViewCell *cell = [super getCellForTableView:tableView controller:controller];
    cell.accessoryType = self.sections!= nil || self.controllerAction!=nil ? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
    
    cell.selectionStyle = self.sections!= nil || self.controllerAction!=nil ? UITableViewCellSelectionStyleBlue: UITableViewCellSelectionStyleNone;
    
    UIActivityIndicatorView * v = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [v startAnimating];
    
    cell.accessoryView = v;
    
    
    return cell;
}

- (void)selected:(QuickDialogTableView *)tableView controller:(QuickDialogController *)controller indexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
